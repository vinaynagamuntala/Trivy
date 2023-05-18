resource "aws_instance" "bastion" {
  ami           = "ami-0b89f7b3f054b957e"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public[0].id
  vpc_security_group_ids = [aws_security_group.bastion.id]

  tags = {
    Name = "stage-bastion"
    terraaform = "true"
  }
}
