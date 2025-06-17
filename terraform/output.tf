# outputs.tf

output "alb_dns_name" {
  description = "Public DNS name of the Application Load Balancer"
  value       = aws_lb.alb.dns_name
}

output "alb_arn" {
  description = "ARN of the ALB"
  value       = aws_lb.alb.arn
}

output "frontend_service_name" {
  description = "Name of the frontend ECS service"
  value       = aws_ecs_service.frontend_service.name
}

output "backend_service_name" {
  description = "Name of the backend ECS service"
  value       = aws_ecs_service.backend_service.name
}

output "vpc_id" {
  description = "VPC ID created for ECS services"
  value       = aws_vpc.main.id
}

