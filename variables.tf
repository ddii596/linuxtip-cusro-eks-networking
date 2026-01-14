variable "project_name" {
  type = string
}

variable "region" {
  type = string

}

variable "vpc_cidr" {
  type = string
}

variable "aditional_vpc_cidrs" {
  type        = list(string)
  default     = []
  description = "lista de cidrs adcionais"

}

variable "public_subnets" {
  description = "Lista de subnets publicas da vpc"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))


}

variable "private_subnets" {
  description = "Lista de subnets privadas da vpc"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))


}


variable "database_subnets" {
  default     = []
  description = "Lista de subnets database"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))


}
