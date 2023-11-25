#1 Create a Region
variable "region" {
  type        = string
  description = "Region to create resources"
  default     = "us-east-1"

}

#2 Create a named profile
variable "profile" {
  type        = string
  description = "IAM user credential executing the terraform script"
  default     = "obinna"

}

#3 Create Environment for the project

variable "environment" {
  type        = string
  description = "Environment that has this project"
  default     = "dev"
}
#4 Create Name for the project
variable "project_name" {
  type        = string
  description = "Name of the project"
  default     = "nest-app-ecs"

}

#s3 bucket variables
variable "env_file_bucket_name" {
  type        = string
  description = "Name of bucket"
}


variable "env_file_name" {
  type        = string
  description = "Name of the env file when it is in s3 bucket"
  default     = "nest-github-deployment.env"

}

variable "env_file_location" {
  type        = string
  description = "env file location in our local computer or pwd "
  default     = "./nest-github-deployment.env"
}

#ECS VARIABLES

variable "cpu_architecture" {
  type        = string
  description = "ecs cpu architecture "
  default     = "ARM64"
}

variable "container_image" {
  type        = string
  description = "nest-app image stored in amazon ecr "
  default     = "612500737416.dkr.ecr.us-east-1.amazonaws.com/nestapp:8"
}

#Route53 variables

variable "domain_name" {
  type        = string
  description = "Hosted Zone or domain name "
  default     = "wiz-obi.com"
}

variable "record_name" {
  type        = string
  description = "sub domain name "
  default     = "www"
}

#ACM VARIABLES
variable "subject_alternative_names" {
  type        = list(string)
  description = "subject alternative names for cert manager "
  default     = ["*.wiz-obi.com"]
}
