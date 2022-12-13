module "test-custom-image" {
  source ="./module" 
  resource_group = var.resource_group
  cos_instance_name = var.cos_instance_name
  bucket_name       = var.bucket_name
  bucket_type       = var.bucket_type 
  region            = var.region 
  object_key        = var.object_key
  image_name        = var.image_name
  os_name           = var.os_name
  
}