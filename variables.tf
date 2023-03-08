# ___________________________________________________________________________________
#| Date  : March, 08 2023        
#| Autor : Utrains DevOps Team   
#| 
#| Description :
#|     This file allows to define the different variables that are used in our code. 
#|     You can modify them in order to define the values that suit you.                              
#|___________________________________________________________________________________

variable "resource_region" {
  type    = string
  default = "us-east-2"
  description = "Region of all our aws resources"
}

variable "database_type" {
  type    = string
  default = "mysql"
  description = "Type of our DB"
}

variable "database_version" {
  type    = string
  default = "8.0.31"
  description = "Version of our DB"
}

variable "database_identifier" {
  type    = string
  default = "dev-rds-instance"
  description = "identifier of our DB"
}

variable "database_class_instance" {
  type    = string
  default = "db.t2.micro"
  description = "instance class of our DB"
}

variable "database_name" {
  type    = string
  default = "utrainsapplicationdb"
  description = "Our database name"
}