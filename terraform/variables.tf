variable "aws_region" { type = string }
variable "environment" { type = string }
variable "cluster_name" { type = string }
variable "new_relic_license_key" {
  type      = string
  sensitive = true
}
