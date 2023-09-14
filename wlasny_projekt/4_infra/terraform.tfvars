environment    = "dev"
project_prefix = "kmz"
data_containers = [{
  access_type = "private"
  name        = "private"
  },
  {
    access_type = "blob"
    name        = "public"
}]
data = {
  blob1 = {
    name           = "foo"
    content        = "bar"
    file_extension = "txt"
  },
  blob2 = {
    name           = "bar"
    content        = "foo"
    file_extension = "sec"
  }
}