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

resource "aws_elastic_beanstalk_application" "Terraform-BS-App" {
  name        = var.app_name
  description = "beanstalk application using terraform"
}

resource "aws_elastic_beanstalk_environment" "Terraform-BS" {
  name                = var.env_name
  application         = aws_elastic_beanstalk_application.Terraform-BS-App.name
  solution_stack_name = var.solution_stack

  setting {
      namespace = "aws:autoscaling:launchconfiguration"
      name      = "IamInstanceProfile"
      value     = var.instance_profile
  }
}
