variable "location" {
  type        = string
  default     = "West Europe"
  description = "The Azure Region in which all resources in this example should be created."
}

variable "data_containers" {
  type = list(object({
    name        = string
    access_type = string
  }))
  default = [
    {
      name        = "public"
      access_type = "blob"
    },
    {
      name        = "private"
      access_type = "private"
    }
  ]
  description = "The list of containers to create in the storage account."
}

variable "data" {
  type = map(object({
    name      = string
    content   = string
    extension = string
  }))
  description = "The map of files to create in the storage account."
  default = {
    "plain" = {
      name      = "plain"
      content   = "This is an example file."
      extension = "txt"
    },
    "secret" = {
      name      = "secret"
      content   = "This is an example secret file."
      extension = "sec"
    }
  }
}