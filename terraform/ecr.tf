resource "aws_ecr_repository" "app_repo" {
  name = "ecs-fargate-app"


  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "ecs-fargate-app"
  }
}