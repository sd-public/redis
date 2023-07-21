variable "owner" {
  description = "Owner of the Elasticache resources."
  type        = string
}

variable "service" {
  description = "Service name of the Elasticache resources."
  type        = string
}

variable "name" {
  description = "Name of the Elasticache resources."
  type        = string
}

variable "classification" {
  description = "Classification of the Elasticache resources."
  type        = string
}

variable "cache_clusters" {
  type        = number
  description = "Number of node groups (shards) for this Redis replication group."
}

variable "replicas" {
  type        = number
  description = "Number of replica nodes in each node group."
}

variable "node_type" {
  type        = string
  description = "Instance class to be used. Has to support cluster mode."
}

variable "maxmemory_policy" {
  type        = string
  description = "Redis parameter for maxmermory policy"
}
