provider "aws" {
region = "ap-south-1"
access_key = "AKIATX62567MPBQGLPM7"
secret_key = "qKOopdpgtZbq5plMymCZ37/BxvWE3Vt5cv8PDRpG"
}

resource "aws_instance" "example-server" {
  ami                         = "ami-0be0a52ed3f231c12" // Ubuntu 20.04 LTS
  instance_type               = "r5.xlarge"
  disable_api_termination     = false
  monitoring                  = false
  subnet_id                   = "subnet-094f922032637286a"
  key_name                    = "Terraform_demo"
  vpc_security_group_ids      = ["sg-015c6bf5272b2ef3f"]

  root_block_device {
    volume_type           = "standard"
    volume_size           = 10
    encrypted             = true
    delete_on_termination = true
   }
  }

