# 🏢 TechNova Solutions S.L. | Infraestructura Corporativa TI Integral
**Proyecto Intermodular Integral - 1º ASIR (Administración de Sistemas Informáticos en Red)**

![Status](https://img.shields.io/badge/Estado-Completado-success?style=for-the-badge)
![Modulos](https://img.shields.io/badge/Módulos_ASIR-7/7-blue?style=for-the-badge)
![Páginas](https://img.shields.io/badge/Documentación-200%2B_Páginas-orange?style=for-the-badge)

---

## 🎯 Motivación y Enfoque del Proyecto

En este repositorio documento el diseño, despliegue y mantenimiento desde cero de la infraestructura tecnológica para **TechNova Solutions S.L.**, una consultoría TI compuesta por un equipo de 20 profesionales.

**¿Por qué una consultoría TI?** He elegido este modelo de negocio porque diseñar la red y los sistemas para una empresa que vive de la propia tecnología es el mayor reto técnico posible. Un entorno de consultoría exige alta disponibilidad, seguridad estricta, entornos de despliegue híbridos y una sólida estrategia de continuidad de negocio.

Este proyecto es mi forma de **demostrar capacidades reales para el mundo laboral**. Más allá del currículum, este trabajo unifica todas las asignaturas del primer año de ASIR en un único ecosistema funcional. Documento mi capacidad de integración y mi preparación técnica para afrontar operaciones en un entorno corporativo exigente, desde la compra del hardware físico hasta la migración final a la nube.

---

## 🛠️ Stack Tecnológico y Arquitectura

He apostado por un stack tecnológico avanzado y heterogéneo para simular un entorno empresarial real, evitando soluciones simplificadas:

### 🖥️ Sistemas y Virtualización
![VirtualBox](https://img.shields.io/badge/VirtualBox-183A61?style=flat&logo=virtualbox&logoColor=white) ![Windows Server](https://img.shields.io/badge/Windows_Server_2022-0078D6?style=flat&logo=windows&logoColor=white) ![Ubuntu](https://img.shields.io/badge/Ubuntu_24.04-E95420?style=flat&logo=ubuntu&logoColor=white) ![PowerShell](https://img.shields.io/badge/PowerShell-5391FE?style=flat&logo=powershell&logoColor=white)
* **Virtualización:** Hipervisor principal utilizado para el laboratorio intermodular.
* **Windows Server 2022:** Despliegue de Controlador de Dominio, gestión de **GPOs** y automatización de **Active Directory** mediante scripts de PowerShell (lectura de ficheros XML).
* **Ubuntu Server 24.04 LTS:** Alojamiento de servicios críticos sin interfaz gráfica, asegurando rendimiento para la Intranet (**Apache2**) y BBDD.
* **Windows 11 Pro:** Puestos cliente preparados mediante **Sysprep** y securizados con cifrado **BitLocker**.

### 🌐 Redes y Comunicaciones
![Cisco](https://img.shields.io/badge/Cisco_Packet_Tracer-1BA0D7?style=flat&logo=cisco&logoColor=white)
* **Topología Jerárquica:** Diseño Core-Acceso con redundancia.
* **Enrutamiento y Segmentación:** Protocolo **OSPFv2**, implementación de **VLANs** departamentales y DHCP Relay.
* **Seguridad:** Configuración de **ACLs** perimetrales y endurecimiento de dispositivos (SSH v2, deshabilitación de Telnet).

### 🗄️ Bases de Datos y Entorno Web
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=flat&logo=postgresql&logoColor=white) ![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=html5&logoColor=white) ![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=css3&logoColor=white)
* **PostgreSQL:** Motor relacional con diseño de modelo E/R, secuencias automatizadas y control de acceso basado en roles (RBAC).
* **Frontend Intranet:** Desarrollo visual en HTML5 y CSS3 para el portal corporativo.
* **Gestión de Backups:** Tareas `cron` en Linux extrayendo datos con `pg_dump` y enviándolos por SMB, complementado con `ntdsutil` en Windows.

### 📄 Gestión de Datos Estructurados (Marcas)
![XML](https://img.shields.io/badge/XML-00609C?style=flat&logo=xml&logoColor=white) ![JSON](https://img.shields.io/badge/JSON-000000?style=flat&logo=json&logoColor=white) 
* **XML y XSD:** Estandarización y validación estricta de documentos para el Inventariado de Hardware y la facturación.
* **Sindicación y Consultas:** Implementación de canales RSS/Atom y extracción avanzada de datos mediante XPath y XQuery.

### ⚙️ Hardware y Centro de Datos
![Dell](https://img.shields.io/badge/Dell_PowerEdge-007DB8?style=flat&logo=dell&logoColor=white)
* **Diseño CPD:** Selección de servidores en rack, cálculo de tolerancias térmicas (BTU), sistemas de alimentación ininterrumpida (SAI) y arreglos **RAID 1/5**.
* **Presupuestación:** Análisis financiero de Coste Total de Propiedad (TCO).

### ☁️ Cloud Computing
![AWS](https://img.shields.io/badge/AWS-232F3E?style=flat&logo=amazon-aws&logoColor=white)
* **Amazon Web Services (AWS):** Planificación de migración a la nube con arquitecturas de alta disponibilidad (VPC con subredes públicas/privadas, EC2, RDS, S3) e IAM.

---

## 🗂️ Estructura del Repositorio (Módulos ASIR)

El proyecto se divide en 7 fases modulares integradas, reflejando el flujo de trabajo de un departamento TI real:

| Módulo | Área ASIR | Descripción del Contenido |
| :--- | :--- | :--- |
| **[📂 1_Hardware](./1_Hardware)** | *Fundamentos* | Diseño del CPD, elección de servidores Dell, configuración RAID, dimensionamiento de SAIs y análisis TCO. |
| **[📂 2_Sistemas](./2_Sistemas)** | *Sistemas Operativos* | Despliegue híbrido, automatización masiva de AD con PowerShell, GPOs restrictivas y backups automatizados. |
| **[📂 3_Redes](./3_Redes)** | *Planificación* | Arquitectura Packet Tracer, direccionamiento VLSM, OSPFv2, VLANs, y seguridad mediante listas de control ACL. |
| **[📂 4_BBDD](./4_Bases_de_Datos)** | *Gestión de BBDD* | Modelo E/R, despliegue PostgreSQL en Linux, scripts DDL/DML, roles de seguridad y persistencia de datos. |
| **[📂 5_Marcas](./5_Marcas)** | *Lenguajes de Marcas* | Desarrollo de Intranet (HTML/CSS), validación de inventario con esquemas XSD y consultas con XPath/XQuery. |
| **[📂 6_Cloud](./6_Cloud)** | *Computación Cloud* | Diseño de red AWS (VPC, NAT Gateway), instancias EC2, bases de datos gestionadas RDS y cálculo de costes (AWS Pricing). |
| **[📂 7_Empleabilidad](./7_Empleabilidad)** | *Itinerario Empleabilidad* | Elaboración de currículum técnico, optimización de perfil en LinkedIn y preparación para entrevistas del sector IT. |

---

## 🚀 Hitos Técnicos Destacados

1. **Automatización de Identidades:** Creación de scripts avanzados en PowerShell que parsean archivos XML para generar estructuras organizativas y usuarios masivos en Active Directory sin intervención manual.
2. **Seguridad en Capas Multidimensional:** Aplicación de políticas restrictivas de dominio (GPOs anti-USB), cifrado de volúmenes con BitLocker, y control de acceso granular en bases de datos (RBAC).
3. **Despliegue de Imagen Maestra:** Uso de *Sysprep (OOBE)* para generalizar estaciones de trabajo Windows 11, regenerando el SID para clonaciones masivas seguras.
4. **Respaldo Inter-Sistemas Desatendido:** Sincronización de tareas programadas donde un servidor Linux empaqueta su base de datos y la transfiere automáticamente a una cuota de disco segura en el Windows Server mediante protocolo SMB.

---
*👤 Autor: Javier Ordóñez Muñoz* <br>
*💻 Diseñado como proyecto de portfolio para el acceso profesional al sector de la Administración de Sistemas, Redes y Cloud.*
