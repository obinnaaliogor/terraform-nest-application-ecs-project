/*terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         = "obinnatfstate-bucket"
    key            = "nest-app-ecs/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-state-lock"
  }


}*/