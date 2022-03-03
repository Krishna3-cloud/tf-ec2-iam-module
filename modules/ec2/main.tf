
// Getting VPC Data
data "aws_vpc" "default" {
  filter {
    name = "isDefault"
    values = ["true"]
  }
}
