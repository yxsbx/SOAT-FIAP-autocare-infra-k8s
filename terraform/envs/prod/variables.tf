variable "aws_region" { type = string }
variable "vpc_id" { type = string }
variable "private_subnet_ids" { type = list(string) }
variable "public_subnet_ids" { type = list(string) }
variable "api_backend_listener_arn" { type = string }
variable "auth_lambda_invoke_arn" { type = string }
variable "auth_lambda_function_name" { type = string }
variable "new_relic_license_key" {
  type      = string
  sensitive = true
}
