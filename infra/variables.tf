#-------------------------------------------------
# Environment
#-------------------------------------------------

variable "env" {
  default = "test"
}

variable "region" {
  default = "us-west-2"
}


variable "name" {
  default = "jijeesh-infra"
  description = "Security group name"
}
