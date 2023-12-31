variable "app_name" {
    default = "wcg-app"
}

variable "app_container_name" {
    default = "app"
}

variable "app_container_label" {
    default = "wcg"
}

variable "app_image" {}

variable "app_replicas" {}

variable "service_name" {
    default = "wcg-srv"
}

variable "service_type" {}

variable "service_port" {}

variable "ingress_name" {
    default = "wcg-ingress"
}

variable "ingress_host" {}

variable "ingress_path" {
    default = "/"
}

variable "ingress_path_type" {
    default = "Prefix"
}

variable "tf_token" {
    sensitive = true
    type = string
}
