output "jenkins_port" {
    description = "Connect to Jenkins on this port"
    value       = var.jenkins_console_port
}

output "jenkins_master_address" {
    description = "Connect to Jenkins on this IP"
    value       = aws_instance.jenkins_master[0].public_ip
}

output "jenkins_slave_address" {
    description = "Connect to Jenkins slave on this IP"
    value       = aws_instance.jenkins_slave[0].public_ip
}

output "db_endpoint" {
    description = "Connect to Jenkins on this IP"
    value       = aws_db_instance.db[0].endpoint
}