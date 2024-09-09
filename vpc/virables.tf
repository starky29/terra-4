variable "env_name" {
  type = string
  default = "develop"
}

variable "zone" {
  type = string
  default = "ru-central1-a"
}
variable "v4_cidr_block" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
}