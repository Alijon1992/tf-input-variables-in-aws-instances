
variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_count" {
  description = "instance count"
  type        = number
  default     = 2
}

variable "enable_public_ip" {
  description = "enable public ip"
  type        = bool
  default     = true
}

variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = ["deop_user1", "deop_user2", "deopuser3"]
}

variable "project_environment" {
  description = "project name and environment"
  type        = map(string)
  default = {
    project     = "deop-project",
    environment = "dev"
  }

}


