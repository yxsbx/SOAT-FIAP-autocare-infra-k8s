provider "aws" {
  region = var.aws_region
}

# Estrutura base para EKS, API Gateway, HPA e New Relic.
# Complete os recursos cloud conforme a conta AWS da entrega.
resource "aws_ecr_repository" "api" {
  name = "autocarehub-api-${var.environment}"
}

resource "aws_ecr_repository" "web" {
  name = "autocarehub-web-${var.environment}"
}

output "api_repository_url" { value = aws_ecr_repository.api.repository_url }
output "web_repository_url" { value = aws_ecr_repository.web.repository_url }
