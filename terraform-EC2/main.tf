terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region = var.aws_region
}

resource "aws_ecs_cluster" "tf-cluster" {
  name = var.ecs_cluster_name
}

resource "aws_ecs_cluster_capacity_providers" "tf-Fargate" {
  cluster_name = aws_ecs_cluster.tf-cluster.name

  capacity_providers = ["FARGATE"]

  default_capacity_provider_strategy {
    base              = 1
    weight            = 10
    capacity_provider = "FARGATE"
  }
}
