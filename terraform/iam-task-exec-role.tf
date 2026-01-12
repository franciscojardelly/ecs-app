resource "aws_iam_role" "task-execution-role" {
  name = format("%s-%s-task-role", var.cluster_name, var.service_name)

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Principal = {
          Service = "ecs-tasks.amazonaws.com"
        }
        Effect = "Allow"
        Sid    = ""
      }
    ]
  })

}

resource "aws_iam_role_policy" "ecs-task-execution-policy" {
  name = format("%s-%s-ecs-task-plicy", var.cluster_name, var.service_name)
  role = aws_iam_role.task-execution-role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "logs:CreatLogsStream",
          "logs:PutLogsEvents",
          "logs:CreateLogGroup",
          "ecr:GetAuthorizationToken",
          "ecr:BatchCheckLayerAvailability",
          "ecr:GetDownloadUrlForLayer",
          "ecr:BatchGetImage",
          "S3:GetObject",
          "sqs:*"
        ],
        Resource = "*",
        Effect   = "Allow"
      },
    ]
  })

}