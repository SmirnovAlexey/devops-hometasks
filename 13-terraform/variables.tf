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
    default = "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"
    sensitive = true
    type = string
}

variable "files" {
    default = [
        "versions.tf",
        "variables.tf",
        "service.tf"
    ]
}
