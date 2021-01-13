variable "module_depends_on" {
  type        = list
  description = "List of modules or resources this module depends on"
  default     = []
}

variable "create_operator" {
  type        = bool
  description = "Controls whether Wave Operator should be created (it affects all resources)"
  default     = true
}

variable "namespace" {
  type        = string
  description = "The namespace to install the Wave Operator into."
  default     = "spot-system"
}

variable "chart_version" {
  type        = string
  description = "Set the Chart version for the Wave Operator that should be deployed"
  default     = "0.1.8"
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
