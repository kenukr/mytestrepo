terraform {
  required_version = "= 1.1.7"
  cloud {
    organization = "Vyke"

    workspaces {
      name = "test-golang"
    }
  }
}
