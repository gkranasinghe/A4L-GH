terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"

    }
    random = {
      source  = "hashicorp/random"

    }
  }
  required_version = ">= 1.1.0"

  # cloud {
  #   organization = "gkranasinghe"

  #   workspaces {
  #     name = "gh-actions-demo"
  #   }
  # }

  backend "remote" {
    organization = "gkranasinghe"

    workspaces {
      prefix = "gkranasinghe-"
    }
  }

}