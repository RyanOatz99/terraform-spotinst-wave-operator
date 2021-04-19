resource "helm_release" "this" {
  count      = var.create_operator ? 1 : 0
  name       = var.chart
  chart      = var.chart
  repository = var.chart_repository
  version    = var.chart_version
}
