# Infraestructura para una Ecommerce

## Meta del proyecto
Se propone plantear una solución para la implementación de una empresa de comercio electrónico robusta y escalable. La plataforma desea tener las siguientes características

- Soportar alto volúmen de transacciones
- Experiencia de usuario fluida desde un portal principal
- Gestión de productos y pedidos mediante un backoffice
- Ofrecer capacidades analíticas con los datos de ventas obtenidos

---

# Diseño de la arquitectura general

![ecommerce-architecture-general drawio](https://github.com/user-attachments/assets/13cb10c9-64fd-4062-95c1-15f052c0ea1a)

---

# E-commerce ETL Infrastructure 

Este repositorio contiene el código de infraestructura para la capa analítica del proyecto de comercio electrónico, utilizando Azure y Terraform, aquí se crean los recursos necesarios para el procesamiento ETL y el Data Warehouse.

---

## Diagrama analítica

![ecommerce-architecture-analytics drawio](https://github.com/user-attachments/assets/9e86095b-a5fb-40ac-9669-29d95d27d3ef)

---

## Repositorios Relacionado

Este es uno de los tres repositorios que conforman la solución:

1. `ecommerce-expertos-client-side-repo` → https://github.com/carlos-fl/ecommerce-expertos-client-side-repo
2. `ecommerce-infra-nginx-erp-db` → https://github.com/sammycastl/ecommerce-infra-nginx-erp-db
3. `ecommerce-experts-etl-repo` → ETL *(Este repositorio)*

---

## Despliegue 

Este módulo Terraform crea:

- *Servidor SQL* (`azurerm_mssql_server`)
- *Base de datos analítica (Data Warehouse)* (`azurerm_mssql_database`)
- *Azure Data Factory* (`azurerm_data_factory`) con identidad administrada

Estos recursos forman la base para mover, transformar y analizar los datos de ventas, productos, usuarios entre otros.

---

## Archivos del repositorio

| Archivo         | Descripción                                                     |
|-----------------|-----------------------------------------------------------------|
| `main.tf`       | Configura el proveedor de Azure y obtiene el grupo de recursos. |
| `db.tf`         | Crea el servidor SQL y la base de datos analítica.              |
| `df.tf`         | Despliega Azure Data Factory con identidad administrada.        |
| `outputs.tf`    | Muestra los nombres y conexiones de los recursos creados.       |
| `variables.tf`  | Define variables reutilizables.                                 |

---

##  Variables importantes

| Variable               | Descripción                          |
|------------------------|--------------------------------------|
| `subscription_id`      | ID de la suscripción de Azure        |
| `location`             | Región donde se desplegará todo      |
| `project`              | Nombre del proyecto (`ecommerce`)    |
| `enviroment`           | Entorno (`dev`, `prod`, etc.)        |
| `admin_sql_password`   | Contraseña del admin del SQL Server  |
| `tags`                 | Etiquetas para todos los recursos    |

---
