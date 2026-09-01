module "platform" {
  source                = "../../"
  aws_region            = var.aws_region
  environment           = "prod"
  cluster_name          = "autocarehub-prod"
  new_relic_license_key = var.new_relic_license_key
}
