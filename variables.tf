variable "aws-region" {

  default = "ap-south-2"
}

variable "vpc-name" {

  default = "my-vpc"

}

variable "zone1" {

  default = "ap-south-2a"
}

variable "zone2" {

  default = "ap-south-2b"
}

variable "zone3" {

  default = "ap-south-2c"
}

variable "vpc-cidr" {
  default = "10.1.0.0/16"
}

variable "pub-sub-1" {
  default = "10.1.1.0/24"
}

variable "pub-sub-2" {
  default = "10.1.2.0/24"
}

variable "pub-sub-3" {
  default = "10.1.3.0/24"
}

variable "priv-sub-1" {
  default = "10.1.11.0/24"
}

variable "priv-sub-2" {
  default = "10.1.12.0/24"
}

variable "priv-sub-3" {
  default = "10.1.13.0/24"
}

variable "project" {

  default = "terra-project"
}

variable "pub-key-path" {

  default = "max12.pub"
}

variable "priv-key-path" {
  default = "max12"
}
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

