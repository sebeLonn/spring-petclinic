output "instance_id" {
  value = aws_instance.petclinic.id
}

output "instance_public_ip" {
  value = data.aws_eip.existing_eip.public_ip
}
