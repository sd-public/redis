module "elasticache_global_replication_group" {
  source = "git::https://github.com/sd-public/redis-tf-module.git?ref=v1.0.0"

  replication_group_id_suffix = "redis"
  replicas                    = var.replicas
  node_type                   = var.node_type
  cache_clusters              = var.cache_clusters #has to be at least 2 for cluster mode
  owner                       = var.owner
  service                     = var.service
  name                        = var.name
  classification              = var.classification
}
