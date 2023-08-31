resource "kubernetes_service_v1" "service111" {
  metadata {
    name = var.service_name
  }
  spec {
    selector = {
      app = var.app_container_label
    }
    type = var.service_type
    port {
      port = var.service_port
    }
  }
}
