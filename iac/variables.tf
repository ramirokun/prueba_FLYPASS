variable "tags" {
    description = "tags para los ambientes"
    type = map(any)  
}

variable "network" {
    description = "variables necesarias para network"
    type = object({
      vpc_cidr = string
      subnet_cidrs= list(string)
      availability_zones = list(string)
    })
}