output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main_vpc.id
}

output "public_subnet_id" {
  description = "public subnet ID"
  value       = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  description = "private subnet ID"
  value       = aws_subnet.private_subnet.id
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.igw.id
}

output "route_table_id" {
  description = "Route Table ID for public subnet"
  value       = aws_route_table.public_rt.id
}

output "security_group_id" {
  description = "Security Group ID allowing SSH and HTTP"
  value       = aws_security_group.instance_sg.id
}

output "ec2_key_pair_name" {
  description = "Deployed EC2 Key Pair"
  value       = aws_key_pair.deployed_key.key_name
}

output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web_server.id
}

output "ec2_instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.web_server.public_ip
}

output "kms_key_id" {
  description = "KMS Key ID for S3 encryption"
  value       = aws_kms_key.s3_kms.id
}

output "kms_key_alias" {
  description = "KMS Key alias"
  value       = aws_kms_alias.s3_kms_alias.name
}

output "s3_bucket_name" {
  description = "S3 bucket for logs"
  value       = aws_s3_bucket.logs_bucket.bucket
}

output "dynamodb_table_name" {
  description = "DynamoDB table for session storage"
  value       = aws_dynamodb_table.session_table.name
}

output "tls_private_key" {
  description = "Generated EC2 private key"
  value       = tls_private_key.ec2_key.private_key_pem
  sensitive   = true
}