variable "instances_prod" {
  description = "Map of project names to configuration."
  type        = map(any)
  default     = {
    node_prod1 = {
      instance_type           = "t2.micro",
      name                    = "node_prod1"
    },
    node_prod2 = {
      instance_type           = "t2.micro",
      name                    = "node_prod2"
    }
  }
}

variable "instances_stage" {
  description = "Map of project names to configuration."
  type        = map(any)
  default     = {
    node_1 = {
      instance_type           = "t2.micro",
      name                    = "node_stage"
    }
  }
}