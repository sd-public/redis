# redis
```
❯ make plan-dev
cd dev && terraform init
Initializing modules...

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Using previously-installed hashicorp/aws v5.9.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
cd dev && terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.elasticache_global_replication_group.aws_elasticache_global_replication_group.global_rep will be created
  + resource "aws_elasticache_global_replication_group" "global_rep" {
      + arn                                = (known after apply)
      + at_rest_encryption_enabled         = (known after apply)
      + auth_token_enabled                 = (known after apply)
      + automatic_failover_enabled         = (known after apply)
      + cache_node_type                    = (known after apply)
      + cluster_enabled                    = (known after apply)
      + engine                             = (known after apply)
      + engine_version                     = (known after apply)
      + engine_version_actual              = (known after apply)
      + global_node_groups                 = (known after apply)
      + global_replication_group_id        = (known after apply)
      + global_replication_group_id_suffix = "redis"
      + id                                 = (known after apply)
      + num_node_groups                    = (known after apply)
      + primary_replication_group_id       = (known after apply)
      + transit_encryption_enabled         = (known after apply)
    }

  # module.elasticache_global_replication_group.aws_elasticache_parameter_group.primary will be created
  + resource "aws_elasticache_parameter_group" "primary" {
      + arn         = (known after apply)
      + description = "Managed by Terraform"
      + family      = "redis6.x"
      + id          = (known after apply)
      + name        = "elasticache-redis-primary-parameters"
      + tags_all    = (known after apply)

      + parameter {
          + name  = "maxmemory-policy"
          + value = "allKeys-lru"
        }
    }

  # module.elasticache_global_replication_group.aws_elasticache_replication_group.primary will be created
  + resource "aws_elasticache_replication_group" "primary" {
      + apply_immediately              = (known after apply)
      + arn                            = (known after apply)
      + at_rest_encryption_enabled     = true
      + auto_minor_version_upgrade     = (known after apply)
      + automatic_failover_enabled     = false
      + cluster_enabled                = (known after apply)
      + configuration_endpoint_address = (known after apply)
      + data_tiering_enabled           = (known after apply)
      + description                    = "Primary replication group in us-east-2"
      + engine                         = "redis"
      + engine_version                 = "6.x"
      + engine_version_actual          = (known after apply)
      + global_replication_group_id    = (known after apply)
      + id                             = (known after apply)
      + maintenance_window             = (known after apply)
      + member_clusters                = (known after apply)
      + multi_az_enabled               = false
      + node_type                      = "cache.r5.large"
      + num_cache_clusters             = (known after apply)
      + num_node_groups                = 2
      + parameter_group_name           = "elasticache-redis-primary-parameters"
      + primary_endpoint_address       = (known after apply)
      + reader_endpoint_address        = (known after apply)
      + replicas_per_node_group        = 1
      + replication_group_id           = "elasticache-redis-primary"
      + security_group_ids             = (known after apply)
      + security_group_names           = (known after apply)
      + snapshot_window                = (known after apply)
      + subnet_group_name              = (known after apply)
      + tags                           = {
          + "Classification" = "Internal"
          + "Name"           = "something"
          + "Owner"          = "Web"
          + "Service"        = "something"
        }
      + tags_all                       = {
          + "Classification" = "Internal"
          + "Name"           = "something"
          + "Owner"          = "Web"
          + "Service"        = "something"
        }
      + transit_encryption_enabled     = true
    }

  # module.elasticache_global_replication_group.aws_elasticache_replication_group.secondary-1 will be created
  + resource "aws_elasticache_replication_group" "secondary-1" {
      + apply_immediately              = (known after apply)
      + arn                            = (known after apply)
      + at_rest_encryption_enabled     = true
      + auto_minor_version_upgrade     = (known after apply)
      + automatic_failover_enabled     = false
      + cluster_enabled                = (known after apply)
      + configuration_endpoint_address = (known after apply)
      + data_tiering_enabled           = (known after apply)
      + description                    = "Secondary replication group in eu-west-1"
      + engine                         = "redis"
      + engine_version                 = (known after apply)
      + engine_version_actual          = (known after apply)
      + global_replication_group_id    = (known after apply)
      + id                             = (known after apply)
      + maintenance_window             = (known after apply)
      + member_clusters                = (known after apply)
      + multi_az_enabled               = false
      + node_type                      = (known after apply)
      + num_cache_clusters             = (known after apply)
      + num_node_groups                = 2
      + parameter_group_name           = (known after apply)
      + primary_endpoint_address       = (known after apply)
      + reader_endpoint_address        = (known after apply)
      + replicas_per_node_group        = (known after apply)
      + replication_group_id           = "example-redis-secondary-1"
      + security_group_ids             = (known after apply)
      + security_group_names           = (known after apply)
      + snapshot_window                = (known after apply)
      + subnet_group_name              = (known after apply)
      + tags                           = {
          + "Classification" = "Internal"
          + "Name"           = "something"
          + "Owner"          = "Web"
          + "Service"        = "something"
        }
      + tags_all                       = {
          + "Classification" = "Internal"
          + "Name"           = "something"
          + "Owner"          = "Web"
          + "Service"        = "something"
        }
      + transit_encryption_enabled     = true
    }

  # module.elasticache_global_replication_group.aws_elasticache_replication_group.secondary-2 will be created
  + resource "aws_elasticache_replication_group" "secondary-2" {
      + apply_immediately              = (known after apply)
      + arn                            = (known after apply)
      + at_rest_encryption_enabled     = true
      + auto_minor_version_upgrade     = (known after apply)
      + automatic_failover_enabled     = false
      + cluster_enabled                = (known after apply)
      + configuration_endpoint_address = (known after apply)
      + data_tiering_enabled           = (known after apply)
      + description                    = "Secondary replication group in ap-east-1"
      + engine                         = "redis"
      + engine_version                 = (known after apply)
      + engine_version_actual          = (known after apply)
      + global_replication_group_id    = (known after apply)
      + id                             = (known after apply)
      + maintenance_window             = (known after apply)
      + member_clusters                = (known after apply)
      + multi_az_enabled               = false
      + node_type                      = (known after apply)
      + num_cache_clusters             = (known after apply)
      + num_node_groups                = 2
      + parameter_group_name           = (known after apply)
      + primary_endpoint_address       = (known after apply)
      + reader_endpoint_address        = (known after apply)
      + replicas_per_node_group        = (known after apply)
      + replication_group_id           = "example-redis-secondary-1"
      + security_group_ids             = (known after apply)
      + security_group_names           = (known after apply)
      + snapshot_window                = (known after apply)
      + subnet_group_name              = (known after apply)
      + tags                           = {
          + "Classification" = "Internal"
          + "Name"           = "something"
          + "Owner"          = "Web"
          + "Service"        = "something"
        }
      + tags_all                       = {
          + "Classification" = "Internal"
          + "Name"           = "something"
          + "Owner"          = "Web"
          + "Service"        = "something"
        }
      + transit_encryption_enabled     = true
    }

Plan: 5 to add, 0 to change, 0 to destroy.
```
