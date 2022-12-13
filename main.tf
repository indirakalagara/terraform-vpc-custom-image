
/* locals{
  object_key = "${var.object_key}/${var.object_key}"
} */

data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}

data "ibm_resource_instance" "cos_instance" {
  name              = var.cos_instance_name
  resource_group_id = data.ibm_resource_group.resource_group.id
  service           = "cloud-object-storage"
}

data "ibm_cos_bucket" "cos_bucket" {
  resource_instance_id = data.ibm_resource_instance.cos_instance.id
  bucket_name          = var.bucket_name 
  bucket_type          = var.bucket_type 
  bucket_region        = var.region 
}

data "ibm_cos_bucket_object" "cos_object" {
  bucket_crn      = data.ibm_cos_bucket.cos_bucket.crn
  bucket_location = data.ibm_cos_bucket.cos_bucket.bucket_region
  key    = var.object_key  
}


resource "ibm_is_image" "example" {
  name               = var.image_name
  href               = data.ibm_cos_bucket_object.cos_object.object_sql_url 
  operating_system   = var.os_name
  resource_group = data.ibm_resource_group.resource_group.id
    //increase timeouts as per volume size
  timeouts {
    create = "45m"
  }
}

data "ibm_is_image" "custom_image" { 
  depends_on = [
    ibm_is_image.example
  ]
  name = var.image_name
}



