output "iam_user_s3_docker_registry_editor_secret" {
  description = "Secret for IAM user - s3_docker_registry_editor"
  value       = aws_iam_access_key.s3_docker_registry_editor.secret
}

output "iam_user_s3_docker_registry_reader_secret" {
  description = "Secret for IAM user - s3_docker_registry_reader"
  value       = aws_iam_access_key.s3_docker_registry_reader.secret
}