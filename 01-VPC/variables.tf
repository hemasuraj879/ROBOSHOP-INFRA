variable "vpc_cidr" {
  type        = string
  description = "Please provide vpc cidr range"
  default     = "10.0.0.0/16"

}

variable "enable_dns_support" {
  type        = bool
  description = "To enable/disable DNS support in the VPC."
  default     = "true"
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "To enable/disable DNS hostnames in the VPC"
  default     = "true"
}

variable "common_tags" {
  type        = map(any)
  description = "Please provide common tags for the resources"
  default = {
    Terraform = "true"
    env       = "dev"
  }
}

variable "project_name" {
  type        = string
  description = "Please provide project name"
  default     = "Roboshop"
}

variable "env" {
  type        = string
  description = "Please provide env"
  default     = "Dev"
}

#SUBNET LEVEL VARIABLES
variable "public_cidr" {
  type        = list(any)
  description = "Please provide cidr range for subnet"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zone" {
  type        = list(any)
  description = "Please provide zones"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "Please provide whether true or false"
  default     = true
}

#PRIVATE SUBNET LEVEL CREATION
variable "private_cidr" {
  type        = list(any)
  description = "Please provide cidr range for subnet"
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "is_perring_req" {
  type = bool
  description = "Please provide true if peering is required"
  default = true
}