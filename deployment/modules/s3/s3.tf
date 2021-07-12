resource "aws_s3_bucket" "s3_docker_registry" {
  bucket = "docker-registry-ip13"
  acl    = "private"

  tags = {
    Name = "Docker Registry"
  }
}