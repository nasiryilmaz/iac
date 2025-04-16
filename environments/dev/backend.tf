terraform {
  backend "remote" {
    organization = "your-terraform-cloud-org"

    workspaces {
      name = "dev-iac"
    }
  }
}
