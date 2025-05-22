# tf-module-ecs-cluster

Módulo de Terraform para crear un clúster de ECS en AWS.

## Variables

| Nombre                | Descripción                                         | Tipo     | Requerido | Valor por defecto      |
|-----------------------|-----------------------------------------------------|----------|-----------|-----------------------|
| `cluster_name`        | Nombre del clúster ECS                              | string   | Sí        | n/a                   |
| `capacity_providers`  | Lista de proveedores de capacidad                   | list     | No        | `[]`                  |
| `tags`                | Etiquetas a aplicar al clúster                      | map      | No        | `{}`                  |
| `create_cloudwatch_log_group` | Crear grupo de logs de CloudWatch           | bool     | No        | `true`                |
| `cloudwatch_log_group_retention_in_days` | Retención de logs en días      | number   | No        | `7`                   |

## Uso

```hcl
module "ecs_cluster" {
    source = "path/to/tf-module-ecs-cluster"

    cluster_name = "mi-cluster"
    capacity_providers = ["FARGATE", "FARGATE_SPOT"]
    tags = {
        Environment = "dev"
    }
}
```

## Salidas

| Nombre         | Descripción                       |
|----------------|-----------------------------------|
| `cluster_id`   | ID del clúster ECS                |
| `cluster_arn`  | ARN del clúster ECS               |
| `cluster_name` | Nombre del clúster ECS            |

## Requisitos

- Terraform >= 1.0
- AWS Provider >= 4.0

## Licencia

MIT