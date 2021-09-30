output "arn" {
  description = "The ARN of the instance."
  value       = aws_instance.ec2.arn
}

output "capacity_reservation_specification" {
  description = "Capacity reservation specification of the instance."
  value       = aws_instance.ec2.capacity_reservation_specification
}

output "instance_state" {
  description = "The state of the instance. One of: `pending`, `running`, `shutting-down`, `terminated`, `stopping`, `stopped`"
  value       = aws_instance.ec2.instance_state
}

output "outpost_arn" {
  description = "The ARN of the Outpost the instance is assigned to."
  value       = aws_instance.ec2.outpost_arn
}

output "password_data" {
  description = "Base-64 encoded encrypted password data for the instance."
  value       = aws_instance.ec2.password_data
}

output "primary_network_interface_id" {
  description = "The ID of the instance's primary network interface."
  value       = aws_instance.ec2.primary_network_interface_id
}

output "private_dns" {
  description = "The private DNS name assigned to the instance."
  value       = aws_instance.ec2.private_dns
}

output "public_dns" {
  description = "The public DNS name assigned to the instance."
  value       = aws_instance.ec2.public_dns
}

output "public_ip" {
  description = "The public IP address assigned to the instance, if applicable."
  value       = aws_instance.ec2.public_ip
}

output "tags_all" {
  description = "All tags assigned to the ec2."
  value       = aws_instance.ec2.tags_all
}