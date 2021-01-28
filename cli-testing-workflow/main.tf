terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "js-vcs-next"

    workspaces {
      name = "cli-testing-workflow"

    }
  }
}

resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 27
}

output "random" {
  value = random_id.random.hex
}

output "folder" {
  value = "cli-testing-workflow"
}