variable "acr_sku_name" {
  type        = string
  description = "The SKU name of the Container Registry."
  default     = "Basic"
}

variable "tags" {
  type = list(object({
    name  = string
    value = string
  }))
  description = "The tags to associate with a resource"
}

variable "tags2" {
  type        = map(string)
  description = "The tags to associate with a resource"
  # default = {
  #   "name" = "value"
  # }
}