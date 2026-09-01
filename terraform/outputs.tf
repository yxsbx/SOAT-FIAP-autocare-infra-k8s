output "cluster_name" {
  description = "Nome do cluster EKS."
  value       = aws_eks_cluster.main.name
}

output "cluster_endpoint" {
  description = "Endpoint do control plane EKS."
  value       = aws_eks_cluster.main.endpoint
}

output "api_repository_url" {
  description = "URL do ECR da API."
  value       = aws_ecr_repository.api.repository_url
}

output "web_repository_url" {
  description = "URL do ECR do frontend."
  value       = aws_ecr_repository.web.repository_url
}

output "api_gateway_endpoint" {
  description = "Endpoint publico do API Gateway."
  value       = aws_apigatewayv2_api.main.api_endpoint
}

output "auth_cpf_url" {
  description = "Endpoint de autenticacao por CPF."
  value       = "${aws_apigatewayv2_api.main.api_endpoint}/auth/cpf"
}

output "api_proxy_base_url" {
  description = "Base URL das rotas protegidas da API."
  value       = "${aws_apigatewayv2_api.main.api_endpoint}/api"
}

output "autocare_namespace" {
  description = "Namespace da aplicacao."
  value       = kubernetes_namespace.autocarehub.metadata[0].name
}
