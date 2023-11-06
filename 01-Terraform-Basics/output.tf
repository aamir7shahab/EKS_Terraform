output "Instance_public_ip" {
    description = "EC2 Instance Public IP"
    value = aws_instance.ec2test.public_ip
}

output "Insatnce_public_dns" {
    description = "EC2 Instance Public DNS"
    value = aws_instance.ec2test.public_dns 
}