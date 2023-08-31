resource "kubernetes_ingress_v1" "ingress111" {
  metadata {
    name = var.ingress_name
  }
  spec {
    rule {
      host = var.ingress_host
      http {
        path {
          path      = var.ingress_path
          path_type = var.ingress_path_type
          backend {
            service {
              name = var.service_name
              port {
                number = var.service_port
              }
            }
          }
        }
      }
    }
  }
}
