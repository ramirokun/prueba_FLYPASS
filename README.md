Documentación del Proyecto

Introducción

Este repo tiene todo lo necesario para levantar infraestructura en AWS usando Terraform, automatizar despliegues con GitHub Actions y manejar servicios con algunos scripts. La idea es que todo esté organizado y fácil de manejar.

Estructura del Proyecto
```
.
├── .github
│   └── workflows
│       ├── flypass-aws_IaC.yml
│       └── flypass-aws_services.yaml
├── README.md
├── iac
│   ├── ecr
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variables.tf
│   ├── eks
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variables.tf
│   ├── iam
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variables.tf
│   ├── main.tf
│   ├── network
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variables.tf
│   ├── provider.tf
│   ├── s3
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variables.tf
│   ├── terraform.auto.tfvars
│   └── variables.tf
└── services
    ├── ip-collector.yaml
    └── scripts
        ├── create_file.sh
        └── upload_s3.sh
```
¿Qué hay en cada carpeta?

.github/workflows/

Aquí están los workflows de GitHub Actions para automatizar despliegues:

flypass-aws_IaC.yml: Se encarga de la infraestructura en AWS.

flypass-aws_services.yaml: Maneja el despliegue de servicios.

iac/

Toda la configuración de Terraform para levantar recursos en AWS:

ecr/: Configuración del Elastic Container Registry (ECR).

eks/: Clúster de Kubernetes en Elastic Kubernetes Service (EKS).

iam/: Configuración de roles y permisos en AWS IAM.

network/: Red (VPC, subredes, reglas de seguridad, etc.).

s3/: Configuración de buckets en S3.

provider.tf: Configuración del proveedor de Terraform (AWS).

terraform.auto.tfvars: Variables para Terraform.

services/

Cosas necesarias para correr los servicios:

ip-collector.yaml: Configuración de un servicio.

scripts/:

create_file.sh: Crea archivos.

upload_s3.sh: Sube archivos a S3.

Requisitos

Terraform instalado.

Credenciales de AWS configuradas.

Acceso y permisos para ejecutar Terraform y los scripts.

Configuración de GitHub Actions con los secretos necesarios.

¿Cómo se usa?

Inicializar Terraform

terraform init

Ver qué cambios se van a aplicar

terraform plan

Aplicar cambios

terraform apply -auto-approve

Borrar todo (con cuidado ⚠️)

terraform destroy -auto-approve

GitHub Actions

Los workflows en .github/workflows/ automatizan los despliegues. Solo asegúrate de tener los secretos y configuraciones correctas en el repo.

Contribuir

Clona el repo.

Crea una rama nueva.

Haz tus cambios y sube un commit.

Abre un pull request.

Contacto

Si tienes dudas o sugerencias, habla con el equipo de desarrollo. ¡Cualquier aporte es bienvenido! 🚀