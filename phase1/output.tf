
output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = aws_subnet.public[*].id
}

output "jenkins_instance_id" {
  description = "Jenkins EC2 instance ID"
  value       = aws_instance.jenkins.id
}

output "jenkins_public_ip" {
  description = "Public IP of Jenkins EC2"
  value       = aws_instance.jenkins.public_ip
}

output "jenkins_url" {
  description = "Jenkins web address (after Jenkins is installed)"
  value       = "http://${aws_instance.jenkins.public_ip}:8080"
}

output "artifact_bucket_name" {
  description = "Private S3 artifact bucket name"
  value       = aws_s3_bucket.artifacts.bucket
}

output "jenkins_iam_role" {
  description = "IAM role attached to Jenkins EC2"
  value       = aws_iam_role.jenkins.name
}
