resource "aws_iam_user" "s3_docker_registry_editor" {
  name = "s3-docker-registry-editor"
}

resource "aws_iam_access_key" "s3_docker_registry_editor" {
  user = aws_iam_user.s3_docker_registry_editor.name
}

resource "aws_iam_user_policy" "s3_docker_registry_editor_policy" {
  name = "docker-registry-editor-policy"
  user = aws_iam_user.s3_docker_registry_editor.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:PutObjectAcl"
        ],
      "Effect": "Allow",
      "Resource": [
          "arn:aws:s3:::docker-registry-ip13",
          "arn:aws:s3:::docker-registry-ip13/*"
        ]
    }
  ]
}
EOF
}

resource "aws_iam_user" "s3_docker_registry_reader" {
  name = "s3-docker-registry-reader"
}

resource "aws_iam_access_key" "s3_docker_registry_reader" {
  user = aws_iam_user.s3_docker_registry_reader.name
}

resource "aws_iam_user_policy" "s3_docker_registry_reader_policy" {
  name = "docker-registry-reader-policy"
  user = aws_iam_user.s3_docker_registry_reader.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:GetObjectVersion"
        ],
      "Effect": "Allow",
      "Resource": [
          "arn:aws:s3:::docker-registry-ip13",
          "arn:aws:s3:::docker-registry-ip13/*"
        ]
    }
  ]
}
EOF
}