variable "mysql_root_password" {
  description = "MYSQL root password"
  default = "P@ssw0rd"
}

variable "ghost_db_username" {
  description = "Ghost blog database username"
  default = "root"
}


variable "ghost_db_name" {
  description = "Ghost blog database name"
  default = "ghost"
}


variable "mysql_network_alias" {
  description = "The network alias for Mysql"
  default = "db"
}


variable "ghost_network_alias" {
  description = "The network alias for ghost"
  default = "ghost"
}


variable "ext_port" {
  description = "Public port for ghost"
  default = "8080"
}
