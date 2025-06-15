resource "aws_ecs_task_definition" "flask_backend" {
  family                   = "flask-backend-task"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"

  execution_role_arn = aws_iam_role.ecs_task_execution_role.arn
  container_definitions = jsonencode([
    {
      name      = "flask-backend"
      image     = "rajeshwararao78/flask-backend:latest"
      essential = true
      portMappings = [{
        containerPort = 5000
        hostPort      = 5000
      }]
    }
  ])
}

resource "aws_ecs_task_definition" "nextjs_frontend" {
  family                   = "nextjs-frontend-task"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"

  execution_role_arn = aws_iam_role.ecs_task_execution_role.arn
  container_definitions = jsonencode([
    {
      name      = "nextjs-frontend"
      image     = "rajeshwararao78/nextjs-frontend:latest"
      essential = true
      portMappings = [{
        containerPort = 3000
        hostPort      = 3000
      }]
    }
  ])
}

