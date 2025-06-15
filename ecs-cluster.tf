resource "aws_ecs_cluster" "main" {
  name = "devops-assignment-cluster"
}

resource "aws_ecs_service" "backend_service" {
  name            = "backend-service"
  cluster         = aws_ecs_cluster.main.id
  launch_type     = "FARGATE"
  desired_count   = 1

  task_definition = aws_ecs_task_definition.flask_backend.arn

  network_configuration {
    subnets          = [aws_subnet.public_subnet_1.id]
    security_groups  = [aws_security_group.ecs_sg.id]
    assign_public_ip = true
  }

  depends_on = [aws_iam_role_policy_attachment.ecs_task_execution_role_policy]
}

resource "aws_ecs_service" "frontend_service" {
  name            = "frontend-service"
  cluster         = aws_ecs_cluster.main.id
  launch_type     = "FARGATE"
  desired_count   = 1

  task_definition = aws_ecs_task_definition.nextjs_frontend.arn

  network_configuration {
    subnets          = [aws_subnet.public_subnet_1.id]
    security_groups  = [aws_security_group.ecs_sg.id]
    assign_public_ip = true
  }

  depends_on = [aws_iam_role_policy_attachment.ecs_task_execution_role_policy]
}

