variable "region" {
  type        = string
  description = "Region of IBM Cloud "
  default     = ""
}

variable "ibmcloud_api_key" {
  type        = string
  description = "API key of IBM Cloud "
  default     = ""
}


variable "base_name" {
  type        = string
  description = "Prefix name for all IBM Cloud resources"
  default     = ""
}

variable "zone" {
  type        = string
  description = "IBM Cloud resource deployment Zone in a Cloud Region"
  default     = ""
}

variable "ssh_key" {
  type        = string
  description = "SSH key ID to inject into the virtual server instance"
  default     = ""
}

variable "image_name" {
  type        = string
  description = "VSI image name"
  default     = ""
}

variable "vsi_profile" {
  type        = string
  description = "VS Instance size"
  default     = ""
}

variable "os_name" {
  type        = string
  description = "Operating System name of custom image / virtual instance"
  default     = ""
}

variable "cos_instance_name" {
  type        = string
  description = "IBM COS Instance name"
  default     = ""
}


variable "bucket_name" {
  type        = string
  description = "IBM COS Instance name"
  default     = ""
}


variable "object_key" {
  type        = string
  description = "Key of the COS Object "
  default     = ""
}

variable "bucket_type" {
  type        = string
  description = "Type of the COS Object "
  default     = "region_location"
}

variable "resource_group" {
  type        = string
  description = "Resource group of IBM COS object "
  default     = ""
}
