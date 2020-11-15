# see backend.tf for backend implementation
provider "aws" {
    region     = "us-west-2"
}

resource "aws_route53_zone" "example_dns_zone" {
    name = "simple-terraform-backend.com"
}