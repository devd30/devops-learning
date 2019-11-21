variable "container_name" {
  description = "name of the container"
  default = "blog"
}

variable "image_name" {
  description = "imageof te conatiner"
  default = "ghost:latest"
}

variable "int_port" {
  description = "inetrnal pirr"
  default = "2368"
}

variable "ext_port" {
  description = "etrnal pirr"
  default = "80"
}

