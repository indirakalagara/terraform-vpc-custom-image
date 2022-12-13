
output image_object {
  value = data.ibm_cos_bucket_object.cos_object
}
output image_object_crn {
  value = data.ibm_cos_bucket_object.cos_object.object_sql_url
} 

output custom_image_crn {
  value = data.ibm_is_image.custom_image.crn
} 

output custom_image_id {
  value = data.ibm_is_image.custom_image.id
} 