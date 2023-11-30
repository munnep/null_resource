terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.2"
    }
  }
}

provider "null" {
  # Configuration options
}

resource "null_resource" "test" {}
