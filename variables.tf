variable "create_operator" {
  type        = bool
  description = "Controls whether Wave Operator should be created (it affects all resources)"
  default     = true
}

variable "chart_version" {
  type        = string
  description = "Set the Chart version for the Wave Operator that should be deployed"
  default     = "0.2.3"
}

variable "chart_repository" {
  type        = string
  description = "Repository URL where to locate the Wave Operator chart"
  default     = "https://charts.spot.io"
}

variable "chart" {
  type        = string
  description = "Chart name to be deployed"
  default     = "wave-operator"
}
