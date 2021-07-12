output "app_private_instance1_subnet1_id" {
  description = "Instance id of private app instance (1) in subnet 1"
  value       = aws_instance.app_private_instance1_subnet1.id
}

output "app_private_instance2_subnet1_id" {
  description = "Instance id of private app instance (2) in subnet 1"
  value       = aws_instance.app_private_instance1_subnet1.id
}

output "app_private_instance1_subnet2_id" {
  description = "Instance id of private app instance (1) in subnet 2"
  value       = aws_instance.app_private_instance1_subnet2.id
}

output "bastion_subnet1_id" {
  description = "Instance id of bastion instance (1)"
  value       = aws_instance.bastion_subnet1.id
}

output "bastion_subnet2_id" {
  description = "Instance id of bastion instance (2)"
  value       = aws_instance.bastion_subnet2.id
}