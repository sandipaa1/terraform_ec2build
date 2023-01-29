module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "test"

  ami                    = "ami-0574da719dca65348"
  instance_type          = "t2.micro"
  key_name               = "Test-keypair"
  monitoring             = true
  vpc_security_group_ids = ["sg-0b761f2836106b5e5"]
  subnet_id              = "subnet-03297e2364a916d16"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}