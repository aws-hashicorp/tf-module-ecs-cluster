# ECS Cluster
resource "aws_ecs_cluster" "ecs_cluster" {

  name = "ecs-cluster-${var.cluster_name}"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  tags = var.tags

}

# ECS Cluster Capacity Providers
resource "aws_ecs_cluster_capacity_providers" "ecs_cluster_capacity" {

  count        = var.create_capacity_providers ? 1 : 0
  cluster_name = aws_ecs_cluster.ecs_cluster.name

  capacity_providers = [var.capacity]

  default_capacity_provider_strategy {
    base              = var.base
    weight            = var.weight
    capacity_provider = var.capacity
  }

}
