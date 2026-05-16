# ☁️ Módulo: Computación en la Nube
## Despliegue de Infraestructura en la Nube (AWS) - Proyecto TechNova

En este módulo he migrado los servicios de TechNova Solutions S.L. hacia la infraestructura de Amazon Web Services (AWS). He replicado el entorno local (on-premise) en una arquitectura cloud para mejorar la disponibilidad de los servidores, facilitar la administración de los recursos y reducir los costes de mantenimiento físico.

---

## 🎯 Objetivos del diseño
He configurado el entorno en la nube basándome en tres puntos:
* **Alta disponibilidad:** Despliegue de instancias en la región de Norte de Virginia (`us-east-1`) garantizando que los servicios web e identidades estén siempre operativos.
* **Control del gasto (TCO):** Uso de volúmenes de almacenamiento optimizados (`gp3`) y aprovechamiento de la capa gratuita de AWS para mantener un modelo de costes eficiente.
* **Seguridad lógica:** Implementación de un aislamiento de red estricto mediante firewalls virtuales redundantes para proteger los servidores internos.

---

## 🛠️ Configuración Técnica

### 1. Arquitectura de Red (VPC)
He creado una **Virtual Private Cloud (VPC)** desde cero para estructurar la red lógica de la empresa:
* **Subredes:** He dividido el direccionamiento en subredes públicas (`10.0.1.0/24`) para los servicios expuestos y subredes privadas (`10.0.2.0/24`) para proteger los servidores críticos.
* **Enrutamiento:** He configurado el **Internet Gateway** para dar salida a la red pública y tablas de rutas personalizadas para denegar accesos externos directos a la zona privada.

### 2. Instancias de Computación (EC2)
He levantado los servidores necesarios para soportar los servicios corporativos:
* **Windows Server 2022:** Configurado en la subred privada como el controlador de dominio principal con **Active Directory (AD DS)** para la gestión centralizada de cuentas de usuario de la organización.
* **Ubuntu Server 24.04 LTS:** Servidor web con Apache situado en la subred pública para alojar de manera segura el portal de la consultora.

### 3. Gestión de Almacenamiento y Servicios de Datos
* **Amazon S3:** Despliegue de un bucket configurado para el hosting de un sitio web estático, aplicando reglas de ciclo de vida (Lifecycle Rules) para optimizar el almacenamiento y replicación entre regiones (CRR).
* **Amazon EFS (Elastic File System):** Sistema de archivos compartido en red montado directamente sobre las instancias Linux de la subred privada para el intercambio de datos centralizado.
* **Amazon EBS (gp3):** Volúmenes de estado sólido asignados a las instancias para balancear el coste mensual con un rendimiento alto de operaciones de lectura/escritura (IOPS).

### 4. Seguridad de la Infraestructura
* **Security Groups:** Actúan como firewall a nivel de instancia (*stateful*). He cerrado todos los puertos de entrada permitiendo únicamente el tráfico imprescindible (HTTP, RDP, SSH, SQL).
* **Network ACLs (NACLs):** Filtro de seguridad a nivel de subred (*stateless*) que añade una segunda capa perimetral para blindar la comunicación entre zonas públicas y privadas.

---

## 🔗 Relación con otros módulos
Este entorno en la nube unifica las configuraciones que he realizado en el resto de asignaturas:
* **Redes (M3):** La topología de la VPC y el uso de subredes públicas/privadas representa la trasposición al cloud del diseño jerárquico de VLANs que monté en Cisco Packet Tracer.
* **Sistemas Operativos (M2):** La administración y securización de las instancias EC2 (tanto Ubuntu como Windows Server) es idéntica a la gestión realizada en los entornos virtualizados locales.
* **Bases de Datos (M4):** La infraestructura cloud está dimensionada para alojar el motor relacional PostgreSQL, garantizando la integridad de las tablas y latencias mínimas de conexión.

---

## 📂 Archivos del proyecto
| Archivo | Qué es |
| :--- | :--- |
| 📄 **[INTERMODULAR_CLOUD_Javier_Ordoñez.pdf](./INTERMODULAR_CLOUD_Javier_Ordoñez.pdf)** | Memoria técnica completa (Estrategia de migración, diseño VPC, configuración de instancias y costes). |
| 🖼️ **[VPC_TechNova.drawio.png](./VPC_TechNova.drawio.png)** | Diagrama de arquitectura de red cloud detallando las subredes, tablas de rutas y componentes de AWS. |

---

> **Resumen:** He migrado la infraestructura física de TechNova a una arquitectura cloud funcional en AWS, aplicando políticas estrictas de seguridad perimetral y almacenamiento centralizado.
