### network
variable "region" {
  description = "The aws region to deploy the service into"
  type        = string
  default     = "us-east-1"
}

variable "azs" {
  description = "A list of availability zones for the vpc"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "cidr" {
  description = "The vpc CIDR (e.g. 10.0.0.0/16)"
  type        = string
  default     = "10.0.0.0/16"
}

### helm
variable "helm" {
  description = "The helm chart configuration"
  type        = map
  default     = {}
}

### kubernetes cluster
variable "kubernetes_version" {
  description = "The target version of kubernetes"
  type        = string
  default     = "1.17"
}

variable "kubernetes_node_groups" {
  description = "Node group definitions"
  type        = map
  default = {
    "default" = {
      "disk_size"     = "20"
      "instance_type" = "m5.xlarge"
      "max_size"      = "3"
      "min_size"      = "1"
      "desired_size"  = "1"
    }
  }
}

### rdb cluster (aurora-mysql)
variable "aurora_cluster" {
  description = "RDS Aurora for mysql cluster definition"
  type        = map
  default     = null
}

variable "aurora_instances" {
  description = "RDS Aurora for mysql instances definition"
  type        = map
  default     = {}
}

### security
variable "assume_role_arn" {
  description = "The list of ARNs of target AWS role that you want to manage with spinnaker. e.g.,) arn:aws:iam::12345678987:role/spinnakerManaged"
  type        = list(string)
  default     = []
}

### description
variable "name" {
  description = "The logical name of the module instance"
  type        = string
  default     = "spinnaker"
}

variable "stack" {
  description = "Text used to identify stack of infrastructure components"
  type        = string
  default     = ""
}

variable "detail" {
  description = "The extra description of module instance"
  type        = string
  default     = ""
}

### tags
variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}
