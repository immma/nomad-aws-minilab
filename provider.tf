provider "aws" {
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    region = var.aws_region
}

terraform {
  	backend "remote" {
    	organization = "wolke"

    workspaces {
      	name = "nomad-aws-minilab"
    }
  }
}
