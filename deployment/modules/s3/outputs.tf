output "s3_docker_registry" {
  description = "S3 bucket acting docker registry backend"
  value       = aws_s3_bucket.s3_docker_registry.id
}