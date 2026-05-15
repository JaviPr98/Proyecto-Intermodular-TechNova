# ☁️ Módulo: Computación en la Nube
## Proyecto TechNova: Migración Estratégica a AWS (Región eu-west-1)

En este módulo he liderado la migración de los servicios críticos de **TechNova Solutions S.L.** hacia la infraestructura de **Amazon Web Services (AWS)**. El proyecto ha consistido en transformar un entorno físico *on-premise* basado en hardware local en una arquitectura *cloud* profesional, optimizada para la escalabilidad, la seguridad y la eficiencia de costes.

---

## 🎯 Objetivos de la Migración
* **Continuidad de Negocio:** Garantizar la alta disponibilidad de los servicios de identidad y web en la región de **Irlanda (eu-west-1)**.
* **Optimización Financiera (TCO):** Implementar un modelo de gastos operativos (OPEX) aprovechando la **Capa Gratuita** de AWS y volúmenes de bajo coste (gp3).
* **Seguridad en Profundidad:** Replicar y mejorar el aislamiento de red local mediante capas de seguridad lógica (VPC, NACLs y Security Groups).

---

## 🛠️ Implementación Técnica

### 1. Arquitectura de Red y Conectividad (VPC)
He diseñado una **Virtual Private Cloud (VPC)** exclusiva para la consultoría en la región de **Irlanda**, asegurando baja latencia y cumplimiento normativo (GDPR):
* **Segmentación Lógica:** Traducción de las VLANs de Cisco a un esquema de **Subredes Públicas (10.0.1.0/24)** y **Privadas (10.0.2.0/24)**.
* **Control de Tráfico:** Configuración de **Internet Gateway** y tablas de rutas personalizadas para blindar la zona de servidores internos.

### 2. Capa de Identidad y Computación (EC2)
Despliegue de instancias elásticas para soportar la carga de trabajo de la empresa:
* **Windows Server 2022:** Implementación del controlador de dominio y **Active Directory (AD DS)** en subred privada para la gestión centralizada de identidades.
* **Ubuntu Server 24.04 LTS:** Servidor web de alto rendimiento (Apache) situado en la zona pública para la exposición de servicios externos.

### 3. Gestión de Datos y Almacenamiento
* **Amazon RDS (PostgreSQL):** Migración del motor de base de datos a un servicio gestionado, delegando el mantenimiento y los backups automáticos a AWS.
* **Amazon EBS (gp3):** Uso de almacenamiento de estado sólido de última generación para optimizar el rendimiento de IOPS y reducir costes operativos.

### 4. Seguridad Avanzada
* **Defensa en Capas:** Combinación de **Security Groups** (stateful) a nivel de instancia y **Network ACLs** (stateless) a nivel de subred.
* **Principio de Menor Privilegio:** Cierre total de puertos, permitiendo exclusivamente el tráfico necesario (HTTP, RDP, SSH, SQL).

---

## 🧩 Sinergia Intermodular (ASIR)
* **Redes (M3):** La arquitectura VPC es la evolución cloud del diseño jerárquico realizado previamente en Cisco Packet Tracer.
* **Sistemas (M2):** Administración avanzada de instancias EC2, replicando la gestión de servicios Windows/Linux del entorno local.
* **Bases de Datos (M4):** Transposición de modelos relacionales de PostgreSQL a entornos gestionados (RDS) manteniendo la integridad de los datos.

---
## 📂 Archivos del proyecto
| Archivo | Qué es |
| :--- | :--- |
| 📄 **[INTERMODULAR_CLOUD_Javier_Ordoñez.pdf](./INTERMODULAR_CLOUD_Javier_Ordoñez.pdf)** | Memoria técnica con el diseño VPC, EC2 y presupuesto de costes. |


---

> **Resumen:** He convertido la infraestructura física de TechNova en una solución cloud profesional, segura y preparada para crecer sin depender de hardware propio.
