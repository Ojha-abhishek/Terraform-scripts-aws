terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

#configure the GitHub provider
provider "github" {
  token = ""
}

resource "github_repository" "example" {
  name        = "example"
  description = "Created by Terraform"

  visibility = "public"

}