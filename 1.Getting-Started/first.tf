variable "region" {
  default = "us-east-1"
}
variable "shared_credentials_file" {
  default = "/Users/mahtab.alam/.aws/credentials"
}

variable "profile" {
  default = "terraform"
}

provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "${var.shared_credentials_file}"
  profile                 = "${var.profile}"
}
resource "aws_instance" "web" {
  ami = "ami-04681a1dbd79675a5"
  instance_type = "t2.micro"
  tags {
    Name = "hello-terraform"
  }
}
