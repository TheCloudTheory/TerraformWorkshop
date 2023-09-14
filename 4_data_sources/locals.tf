# Block `locals` allows to define local variables.
# Definition: locals { ... }
# Note: Local variables are not visible outside the module where they are defined.
locals {
  resource_suffix = "terraform-kam-ex4"
  external_resource_suffix = "terraform-kam"
  resource_suffix_clean = replace(local.resource_suffix, "-", "") # Using `replace` function to remove dashes from the suffix
}