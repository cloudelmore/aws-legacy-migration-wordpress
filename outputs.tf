output "public_ip" {
  description = "Elastic IP of the WordPress server"
  value       = aws_eip.wordpress.public_ip
}

output "ssh_command" {
  description = "Command to connect to the server"
  value       = "ssh -i \"${pathexpand("~/.ssh/wordpress-migration-key")}\" ubuntu@${aws_eip.wordpress.public_ip}"
}

output "site_url" {
  description = "WordPress site address"
  value       = "http://${aws_eip.wordpress.public_ip}"
}