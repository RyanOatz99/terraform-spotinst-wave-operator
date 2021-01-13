resource "null_resource" "module_depends_on" {
  count = var.create_operator && length(var.module_depends_on) > 0 ? 1 : 0

  triggers = {
    value = length(var.module_depends_on)
  }
}

resource "helm_release" "this" {
  count      = var.create_operator ? 1 : 0
  depends_on = [null_resource.module_depends_on]

  name       = var.chart
  chart      = var.chart
  repository = var.chart_repository
  version    = var.chart_version
  namespace  = var.namespace
}
