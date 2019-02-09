resource "kubernetes_deployment" "deployment" {

  metadata {
    name = "demo-app"
  }

  spec {
    replicas = 3

    selector {
      match_labels {
        test = "DemoApp"
      }
    }

    template {
      metadata {
        labels {
          test = "DemoApp"
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
