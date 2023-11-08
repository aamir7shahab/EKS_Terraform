# output "Instance_public_ip" {
#     description = "EC2 Instance Public IP"
#     value = aws_instance.ec2test.public_ip
# }

# output "Instance_public_dns" {
#     description = "EC2 Instance Public DNS"
#     value = aws_instance.ec2test.public_dns 
# }

# For Loops with list
output "for_loop_output_list" {
    description = "For loop for Public IP (List)"
    value = toset([for instance in aws_instance.ec2test: instance.public_ip])
}

# For loop with Maps
output "for_loop_with_maps" {
    description = "For loop for maps output"
    value = toset({for instance in aws_instance.ec2test: instance.id => instance.public_ip})
}

# For loop with Maps Advanced
output "for_loop_with_map_advanced" {
    description = "For loop for maps output_advanced"
    value = {for az, instance in aws_instance.ec2test: az => instance.public_ip}
}

/*
# Legacy Splat expression
output "lagacy_splat_instance_public_dns" {
    description = "Legacy Splat Operator"
    value = aws_instance.ec2test.*.public_dns
}
*/


# # Latest generalised Splat expression
# output "latest_splat_instance_public_dns" {
#     description = "Legacy Splat Operator"
#     value = aws_instance.ec2test[*].public_dns
# }
