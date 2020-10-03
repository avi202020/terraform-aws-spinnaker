variable "enabled" {
  description = "A conditional indicator to enable cluster-autoscale"
  type        = bool
  default     = false
}

### helm
variable "helm" {
  description = "The helm release configuration"
  type        = map
  default = {
    name            = "eks-am"
    repository      = "https://aws.github.io/eks-charts"
    chart           = "appmesh-controller"
    namespace       = "appmesh-system"
    serviceaccount  = "aws-appmesh-controller"
    cleanup_on_fail = true
  }
}

### security/policy
variable "oidc" {
  description = "The Open ID Connect properties"
  type        = map
}

### description
variable "cluster_name" {
  description = "The kubernetes cluster name"
  type        = string
}

### tags
variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}