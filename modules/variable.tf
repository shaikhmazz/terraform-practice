variable "instance_type" {
  default     = "t3.micro"
  type        = string
  description = "Instance type"
}

variable "instance_ami" {
  default     = "ami-0ff47f004dd7cde93"
  type        = string
  description = "Instance AMI"
}

variable "name" {
  default = "web-server"
  type    = string
}
