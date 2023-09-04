variable "ami" {
  default     = ""
  description = "Ubuntu aws ami free tier to deploy flask app"
  type        = string

}

variable "region" {
  default     = ""
  description = "aws-region to deploy flask api pibm"
  type        = string
}

variable "instance_type" {
  default     = ""
  description = "instance type for flask pibm server"
  type        = string
}

variable "public_ip" {
    default = ""
    type = string
  }


