variable "subscription_id" {
    type = string
    description = "Azure subscription ID"  
}

variable "location" {
    type = string
    description = "Azure Region"
    default = "Central US"
}

variable "enviroment" {
    type = string
    description = "enviroment architecture"
    default = "dev"
}

variable "project" {
    type = string
    description = "project name"
    default = "ecommerce"
  
}

variable "tags" {
    type = map(string)
    description = "tags to apply to all resources"
    default = {
      enviroment = "dev"
      date = "june-2025"
      createBy = "David Garcia"
    }
}

variable "admin_sql_password" {
    type = string
    description = "password for the SQL Admin" 
}