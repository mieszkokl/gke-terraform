resource "kubernetes_replication_controller" "replication_controller" {

  metadata {
    name = "demo-app"
  }

  spec {
    replicas = 3
    selector {
      app = "DemoApp"
    }

    template {
      metadata {
        labels {
          app = "DemoApp"
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
