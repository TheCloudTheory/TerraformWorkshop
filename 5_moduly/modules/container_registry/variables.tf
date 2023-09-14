variable "resource_group_name" {
  description = "The name of the resource group in which to create the container registry."
  type        = string
  default     = "myResourceGroup"
}

variable "location" {
  description = "The location of the resource group in which to create the container registry."
  type        = string
  default     = "westeurope"
}