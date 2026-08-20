resource "aws_instance" "ec2-oh" {
  ami           = "ami-0c55b159cbfafe1d7"
  instance_type = "t2.micro"

  tags = {
    owner = "oh"
  }
}
