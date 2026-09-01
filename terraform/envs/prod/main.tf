module "platform" {
  source                    = "../../"
  aws_region                = var.aws_region
  environment               = "prod"
  cluster_name              = "autocarehub-prod"
  vpc_id                    = var.vpc_id
  private_subnet_ids        = var.private_subnet_ids
  public_subnet_ids         = var.public_subnet_ids
  api_backend_listener_arn  = var.api_backend_listener_arn
  auth_lambda_invoke_arn    = var.auth_lambda_invoke_arn
  auth_lambda_function_name = var.auth_lambda_function_name
  new_relic_license_key     = var.new_relic_license_key
  node_min_size             = 2
  node_desired_size         = 3
  node_max_size             = 6
}
