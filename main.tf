

resource "aws_instance" "ec2" {
  ami                         = "ami-014f9afa9eac4451e"
  instance_type               = "t2.micro"
  count                       = var.instance_count
  associate_public_ip_address = true

  tags = var.project_environment  
}

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name = var.user_names[count.index]
}

