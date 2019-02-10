resource "kubernetes_replication_controller" "replication_controller" {

  metadata {
    name = "controller"
  }

  spec {
    replicas = "${var.initial_node_count}"

    selector {
      app = "${var.app_name}"
    }

    template {
      metadata {
        labels {
          app = "${var.app_name}"
        }
      }
      spec {
        container {
          image = "${var.image}"
          name = "demo-app"
          port {
            container_port = 8080
          }
        }
      }
    }
  }
}
