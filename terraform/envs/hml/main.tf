module "platform" {
  source                = "../../"
  aws_region            = var.aws_region
  environment           = "hml"
  cluster_name          = "autocarehub-hml"
  new_relic_license_key = var.new_relic_license_key
}
