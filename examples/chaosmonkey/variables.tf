# Variables for providing to module fixture codes

### aws credential
variable "aws_account_id" {
  description = "The aws account id for the example (e.g. 857026751867)"
}

### network
variable "aws_region" {
  description = "The aws region to deploy"
  type        = string
}

### description
variable "name" {
  description = "The logical name of the module instance"
  type        = string
  default     = "chaosmonkey"
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
