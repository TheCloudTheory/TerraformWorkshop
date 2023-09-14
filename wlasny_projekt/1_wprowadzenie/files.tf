resource "local_file" "file" {
  filename = "file2.txt"
  content  = "Hello, World!!!"
}

resource "local_file" "file2" {
  filename = "file2.txt"
  content  = "Hello, World!!! 1111"
}

resource "local_sensitive_file" "file" {
  filename = "file_sensitive2.txt"
  content  = "Hello, World!!!"
}