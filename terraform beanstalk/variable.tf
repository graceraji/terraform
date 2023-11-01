variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
}

variable "app_name" {
  description = "Name of the Elastic Beanstalk application"
  type        = string
}

variable "env_name" {
  description = "Name of the Elastic Beanstalk environment"
  type        = string
}

variable "solution_stack" {
  description = "Name of the solution stack"
  type        = string
}

variable "instance_profile" {
  description = "Name of the IAM instance profile"
  type        = string
}
