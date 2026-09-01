variable "aws_region" {
  description = "Regiao AWS dos recursos."
  type        = string
}

variable "environment" {
  description = "Ambiente de deploy, como hml ou prod."
  type        = string
}

variable "cluster_name" {
  description = "Nome do cluster EKS."
  type        = string
}

variable "vpc_id" {
  description = "VPC onde o EKS, VPC Link e API Gateway serao integrados."
  type        = string
}

variable "private_subnet_ids" {
  description = "Subnets privadas usadas pelo EKS e pelo API Gateway VPC Link."
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "Subnets publicas usadas por load balancers quando aplicavel."
  type        = list(string)
  default     = []
}

variable "node_instance_types" {
  description = "Tipos de instancia do node group."
  type        = list(string)
  default     = ["t3.medium"]
}

variable "node_desired_size" {
  description = "Quantidade desejada de nodes."
  type        = number
  default     = 2
}

variable "node_min_size" {
  description = "Quantidade minima de nodes."
  type        = number
  default     = 1
}

variable "node_max_size" {
  description = "Quantidade maxima de nodes."
  type        = number
  default     = 4
}

variable "api_backend_listener_arn" {
  description = "ARN do listener privado do Load Balancer/NLB que expõe a API no EKS para integracao privada do API Gateway."
  type        = string
}

variable "auth_lambda_invoke_arn" {
  description = "Invoke ARN da Lambda de autenticacao por CPF."
  type        = string
}

variable "auth_lambda_function_name" {
  description = "Nome da Lambda de autenticacao, usado para permissao do API Gateway."
  type        = string
}

variable "new_relic_license_key" {
  description = "License key do New Relic para Kubernetes integration."
  type        = string
  sensitive   = true
}

variable "new_relic_cluster_name" {
  description = "Nome do cluster exibido no New Relic."
  type        = string
  default     = null
}
