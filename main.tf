
// Getting Role Policy File
data "local_file" "policy_file" {
  filename = var.role_policy_filename
}

// Getting User Data File
data "local_file" "user_data_file" {
  filename = var.user_data_filename
}

// Importing ec2 Module
module "ec2" {
  source = "./modules/ec2/"
  ami_id = var.ami_id
  sg_ingress = var.sg_ingress
  ec2_role_policy = data.local_file.policy_file.content
  user_data = data.local_file.user_data_file.content
}
