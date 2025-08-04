variable "env_deploy" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "mgmt_subnet" {
  type = string  
}

variable "services_subnets" {
  type = list(string)  
}

variable "intra_subnets" {
  type = list(string)  
}

variable "tags" {
  type        = map(string)
  description = "Common tags for all resources"
  default     = {}
}

variable "enable_natgw" {
  type = bool  
}

variable "natgw_per_az" {
  type = bool
  default = false
}
