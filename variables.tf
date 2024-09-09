###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "zone_b" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}
variable "cidr_1002" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

###common vars

# variable "ssh_public_key" {
#   type        = string
#   default     = file("~/.ssh/id_ed25519.pub ")
#   description = "ssh"
# }

###example vm_web var
variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "example vm_web_ prefix"
}

###example vm_db var
variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "example vm_db_ prefix"
}

variable "vm_marketing" {
  type = object({
    source = string
    env_name = string
    instance_name = string
    instance_count = number
    public_ip = bool
    owner = string
    project = string
  })
  default = {
    source = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
    env_name = "develop"
    instance_name = "webs"
    instance_count = 1
    public_ip = true
    owner = "starkov_aa"
    project = "marketing"
  }
}
variable "vm_analytics" {
  type = object({
    source = string
    env_name = string
    instance_name = string
    instance_count = number
    public_ip = bool
    owner = string
    project = string
  })
  default = {
    source = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
    env_name = "stage"
    instance_name = "web-stage"
    instance_count = 1
    public_ip = true
    owner = "starkov_aa"
    project = "marketing"
  }
}
variable "vm_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "family disttro"
}