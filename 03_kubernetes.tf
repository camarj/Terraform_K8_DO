provider "kubernetes" {
    config_path = "${local_file.kubernetes_config.filename}"
}

resource "kubernetes_namespace" "test" {
  metadata {
      name = "dev"
  }
}
