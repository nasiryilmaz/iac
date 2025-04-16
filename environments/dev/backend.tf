terraform {
  backend "remote" {
    organization = "dev_1etss"

    workspaces {
      name = "iac"
    }
  }
}
