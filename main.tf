terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

provider "null" {
  # Configuration options
}


resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "curl https://google.com"
  }
}

resource "null_resource" "test2" {
  provisioner "local-exec" {
    command = "curl https://imdb.com"
  }
}