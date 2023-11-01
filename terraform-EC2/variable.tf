variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
}

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}
