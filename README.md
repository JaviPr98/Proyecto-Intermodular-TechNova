# 🏢 TechNova Solutions S.L. | Infraestructura Corporativa TI Integral
**Proyecto Intermodular Integral - 1º ASIR (Administración de Sistemas Informáticos en Red)**

![Status](https://img.shields.io/badge/Estado-Completado-success)
![Modulos](https://img.shields.io/badge/Módulos_ASIR-7/7-blue)
![Páginas](https://img.shields.io/badge/Documentación-200%2B_Páginas-orange)

---

## 🎯 Motivación y Enfoque del Proyecto

En este repositorio documento el diseño, despliegue y mantenimiento desde cero de la infraestructura tecnológica para **TechNova Solutions S.L.**, una consultoría TI compuesta por un equipo de 20 profesionales.

**¿Por qué una consultoría TI?** He elegido este modelo de negocio porque diseñar la red y los sistemas para una empresa que vive de la propia tecnología es el mayor reto técnico posible. Un entorno de consultoría exige alta disponibilidad, seguridad estricta, segmentación de redes para diferentes clientes y un despliegue de servicios muy robusto.

Este proyecto es mi forma de **demostrar capacidades reales para el mundo laboral**. Más allá del currículum, este trabajo unifica todas las asignaturas del primer año de ASIR en un único ecosistema funcional. Son más de 200 páginas donde muestro mi capacidad de integración y mi preparación técnica para afrontar prácticas en un entorno corporativo exigente.

---

## 🛠️ Stack Tecnológico y Arquitectura

He apostado por un stack tecnológico avanzado y heterogéneo para simular un entorno empresarial real, evitando soluciones simplificadas:

### 🖥️ Sistemas y Virtualización
* **Oracle VirtualBox:** Hipervisor principal utilizado para el laboratorio.
* **Windows Server 2022/2019:** Despliegue de Controladores de Dominio, gestión de políticas de grupo (**GPOs**) y **Active Directory** para administrar a los 20 empleados.
* **Ubuntu Server:** Alojamiento de servicios críticos de infraestructura y despliegue del servidor web (**Apache**).
* **Windows 11:** Sistemas operativos cliente integrados en el dominio.

### 🌐 Redes y Comunicaciones (Cisco Packet Tracer)
* **Topología Avanzada:** Diseño de red escalable con redundancia interna.
* **Enrutamiento y Segmentación:** Protocolo de enrutamiento dinámico **OSPF**, implementación de **VLANs** departamentales y despliegue de **VPNs** para teletrabajo seguro.
* **Seguridad:** Configuración de listas de control de acceso (**ACLs**) tanto perimetrales como internas.

### 🗄️ Bases de Datos y Entorno Web
* **PostgreSQL:** Motor de base de datos relacional para la gestión integral de la empresa.
* **Backend:** Programación en **PHP** para establecer la conexión nativa con la base de datos.
* **Frontend:** Desarrollo de la interfaz de gestión en **HTML5** y **CSS** (trabajado en VS Code).
* **Gestión de Backups:** Políticas de copias de seguridad automatizadas y planes de restauración.

### 📄 Gestión de Datos Estructurados (Marcas)
* **XML y XSD:** Validación estricta de documentos estructurados para el **Inventariado de Hardware**, control de mantenimientos y cálculo del TCO (*Total Cost of Ownership*).

### ☁️ Cloud Computing (AWS)
* **Amazon Web Services (AWS):** Planificación y documentación de la migración de servicios críticos a la nube, garantizando alta disponibilidad y optimización de recursos.

---

## 🗂️ Estructura del Repositorio (Módulos ASIR)

El proyecto se divide en 7 fases modulares integradas, reflejando el flujo de trabajo de un departamento de sistemas real:

| Módulo | Área ASIR | Descripción del Contenido |
| :--- | :--- | :--- |
| **[📂 1_Hardware](./1_Hardware)** | *Fundamentos* | Análisis de necesidades, selección de servidores, almacenamiento y justificación del presupuesto (TCO). |
| **[📂 2_Sistemas](./2_Sistemas)** | *Sistemas Operativos* | Despliegue en VirtualBox, configuración de Ubuntu/Windows Server y administración de Active Directory. |
| **[📂 3_Redes](./3_Redes)** | *Planificación* | Archivos de Packet Tracer, direccionamiento IP, OSPF, VLANs, túneles VPN y reglas ACL de firewall. |
| **[📂 4_BBDD](./4_Bases_de_Datos)** | *Gestión de BBDD* | Modelo E/R, scripts de creación en PostgreSQL, políticas de backups y roles de usuario. |
| **[📂 5_Marcas](./5_Marcas)** | *Lenguajes de Marcas* | Portal web (HTML/CSS/PHP), archivos de configuración y validación de inventario con XML/XSD. |
| **[📂 6_Cloud](./6_Cloud)** | *Computación Cloud* | Diseño de arquitectura en AWS, justificación de migración, estimación de costes y despliegue híbrido. |
| **[📂 7_Empleabilidad](./7_Empleabilidad)** | *Itinerario Empelabilidad* | Perfil profesional, investigación del mercado laboral IT y material preparado para entrevistas técnicas. |

---

## 🚀 Hitos Técnicos Destacados

1. **Integración Total:** La base de datos en PostgreSQL se conecta en tiempo real mediante PHP alojado en un servidor web Apache sobre Ubuntu Server.
2. **Seguridad en Capas:** Aplicación de seguridad desde la capa de red (ACLs) hasta la capa de sistema (GPOs de Active Directory) y base de datos (roles y permisos).
3. **Validación Documental:** El inventario de hardware está estandarizado en XML y validado mediante esquemas XSD propios, asegurando datos técnicos sin errores.
4. **Enfoque Cloud-Ready:** Toda la infraestructura local se ha diseñado con una proyección clara y presupuestada para su escalabilidad en entornos AWS.

---
*👤 Autor: Javier Ordóñez Muñoz* *💻 Diseñado como proyecto de portfolio para el acceso profesional al sector de la Administración de Sistemas y Cloud.*
