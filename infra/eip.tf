data "aws_eip" "existing_eip" {
  filter {
    name   = "tag:Name"
    values = ["group4-eip"]
  }
}

resource "aws_eip_association" "petclinic_eip_assoc" {
  instance_id   = aws_instance.petclinic.id
  allocation_id = data.aws_eip.existing_eip.id
}
