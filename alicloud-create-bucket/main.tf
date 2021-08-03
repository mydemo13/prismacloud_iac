terraform {
  required_version = ">= 0.13"
  required_providers {
    alicloud = {
      source  = "aliyun/alicloud"
      version = "~> 1.106.0"
    }
  }
}

# Configure the Alicloud Provider
provider "alicloud" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
  version    = "~> 1.106.0"
}

resource "alicloud_oss_bucket" "bucket-acl" {
  bucket = "mybucket"
  acl    = "public-read-write"
}


# acl: "private", "public-read", "public-read-write"

