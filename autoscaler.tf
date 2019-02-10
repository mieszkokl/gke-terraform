resource "kubernetes_horizontal_pod_autoscaler" "autoscaler" {
  metadata {
    name = "autoscaler"
  }
  spec {
    max_replicas = 10
    min_replicas = 2
    scale_target_ref {
      kind = "ReplicationController"
      name = "${kubernetes_replication_controller.replication_controller.metadata.0.name}"
    }
  }
}
