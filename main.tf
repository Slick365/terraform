terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "tf-state-bucket-mailslick"
    region     = "ru-central1-a"
    key        = "key"
    access_key = "access_key"
    secret_key = "secret_key"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}


provider "yandex" {
  token     = "token"
  cloud_id  = "cloud_id"
  folder_id = "folder_id"
  zone      = "ru-central1-a"
}



