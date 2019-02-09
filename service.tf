resource "kubernetes_service" "service" {
  metadata {
    name = "service"
  }
  spec {
    selector {
      app = "${var.app_name}"
    }
    port {
      port = 80
      target_port = 8080
    }

    type = "LoadBalancer"
  }
}


