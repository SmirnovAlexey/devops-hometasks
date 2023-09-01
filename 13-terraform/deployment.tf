resource "kubernetes_deployment_v1" "application" {
  metadata {
    name = var.app_name
  }

  spec {
    replicas = var.app_replicas

    selector {
      match_labels = {
        app = var.app_container_label
      }
    }

    template {
      metadata {
        labels = {
          app = var.app_container_label
        }
      }

      spec {
        container {
          image = var.app_image
          name  = var.app_container_name

        }
      }
    }
  }
}
