module "network" {
  source  = "app.terraform.io/TAYLORMCRAE-training/network/google"
  network_name = "gaurav-training-network"
  project_id = var.project
  version = "2.5.0"

  subnets = [
  {
    subnet_name   = "gaurav-training-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}

