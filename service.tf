resource "kubernetes_service" "service" {
  metadata {
    name = "service"
  }
  spec {
    selector {
      app = "DemoApp"
    }
    port {
      port = 80
      target_port = 8080
    }

    type = "LoadBalancer"
  }
}


