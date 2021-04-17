locals {
  containers = {
    for c in var.containers :
    c.name => {
      name        = c.name
      access_type = lookup(c, "access_type", "private")
    }
  }
}
