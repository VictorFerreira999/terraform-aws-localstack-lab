resource "aws_instance" "example_ec2" {
  ami = "ami-12345678" # AMI fictícia
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleEC2Instance"
  }
}  