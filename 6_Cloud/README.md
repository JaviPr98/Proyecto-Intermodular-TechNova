# ☁️ Módulo: Computación en la Nube
## Migración de Infraestructura a AWS - Proyecto TechNova

En este módulo he migrado los servicios de TechNova Solutions a **Amazon Web Services (AWS)**. He pasado de un entorno físico (on-premise) a una arquitectura cloud para que la infraestructura sea más fácil de gestionar, escalar y proteger.

---

## 🎯 Objetivos de la migración
* **Alta Disponibilidad:** Garantizar que los servidores Windows y Linux estén siempre activos y accesibles.
* **Escalabilidad:** Poder ampliar los recursos (RAM/CPU) en segundos según las necesidades de la empresa.
* **Eficiencia de Costes:** Controlar el presupuesto mediante el modelo de pago por uso de AWS y el uso de la capa gratuita.

---

## 🛠️ Configuración Técnica

### 1. Arquitectura de Red (VPC)
He diseñado una **Virtual Private Cloud (VPC)** en la región `us-east-1` (Virginia) que replica el esquema local:
* **Segmentación:** He traducido las VLANs de Cisco a subredes públicas y privadas en la nube.
* **Conectividad:** He configurado el **Internet Gateway** y las tablas de rutas para gestionar el tráfico hacia Internet y la comunicación interna.

### 2. Despliegue de Servidores (EC2)
He levantado instancias para los servicios críticos que antes tenía en local:
* **Windows Server 2022:** Migración del controlador de dominio y el Active Directory para la gestión de identidades.
* **Ubuntu Server 24.04:** Host para el portal web corporativo (Apache) y el motor de base de datos.

### 3. Gestión de Almacenamiento
* **EBS (Elastic Block Store):** Volúmenes de alto rendimiento para el sistema operativo y la persistencia de datos.
* **S3 y EFS:** Uso de Amazon S3 para el hosting estático de la cafetería de la empresa y EFS para tener carpetas compartidas entre varios servidores Linux.

### 4. Seguridad en la Nube
* **Security Groups:** He creado reglas de firewall a nivel de instancia para cerrar todos los puertos menos los necesarios (SSH, RDP, HTTP, SQL).
* **Network ACLs:** He aplicado una segunda capa de filtrado a nivel de subred para controlar los flujos de tráfico.

---

## 🧩 Relación con otros módulos
* **Redes (M3):** La estructura de la VPC es el reflejo en el cloud del diseño jerárquico que hice en Packet Tracer.
* **Sistemas (M2):** La administración de las instancias EC2 es la misma que en local, pero sobre el hipervisor de AWS.
* **Bases de Datos (M4):** He migrado el motor PostgreSQL a la nube asegurando que las tablas y consultas funcionen igual que en el servidor físico.

---

## 📂 Archivos del proyecto
| Archivo | Qué es |
| :--- | :--- |
| 📄 **[INTERMODULAR_CLOUD_Javier_Ordoñez.pdf](./INTERMODULAR_CLOUD_Javier_Ordoñez.pdf)** | Memoria técnica con el diseño VPC, EC2 y presupuesto de costes. |


---

> **Resumen:** He convertido la infraestructura física de TechNova en una solución cloud profesional, segura y preparada para crecer sin depender de hardware propio.
