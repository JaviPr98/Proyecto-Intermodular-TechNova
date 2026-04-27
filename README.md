# 🏢 TechNova Solutions S.L. | Infraestructura Corporativa TI Integral
**Proyecto Intermodular Integral - 1º ASIR (Administración de Sistemas Informáticos en Red)**

![Status](https://img.shields.io/badge/Estado-Completado-success)
![Modulos](https://img.shields.io/badge/Módulos_ASIR-7/7-blue)
![Páginas](https://img.shields.io/badge/Documentación-200%2B_Páginas-orange)

---

## 🎯 Motivación y Enfoque del Proyecto

Este repositorio documenta el diseño, despliegue y mantenimiento desde cero de la infraestructura tecnológica completa para **TechNova Solutions S.L.**, una consultoría TI compuesta por un equipo de 20 profesionales.

**¿Por qué una consultoría TI?** Como futuro Administrador de Sistemas, considero que diseñar la red y los sistemas para una empresa que se dedica a la propia tecnología es el mayor reto posible. Un entorno de consultoría exige alta disponibilidad, seguridad estricta, segmentación de redes para diferentes clientes y un despliegue de servicios robusto. 

Este proyecto nace con un objetivo claro: **demostrar capacidades reales para el mundo laboral**. Más allá del currículo académico estándar, este trabajo de más de 200 páginas unifica todas las disciplinas del primer año de ASIR en un único ecosistema funcional, evidenciando madurez técnica, capacidad de integración y preparación absoluta para afrontar unas prácticas profesionales en un entorno corporativo exigente.

---

## 🛠️ Stack Tecnológico y Arquitectura

Para simular este entorno corporativo, he evitado soluciones simplificadas, apostando por un *stack* tecnológico avanzado y heterogéneo:

### 🖥️ Sistemas y Virtualización
* **Oracle VirtualBox:** Hipervisor principal para el laboratorio.
* **Windows Server 2022/2019:** Despliegue de Controladores de Dominio, gestión de políticas (GPOs) y **Active Directory** para el control de los 20 empleados.
* **Ubuntu Server:** Alojamiento de servicios críticos de infraestructura y despliegue del servidor web (**Apache**).
* **Windows 11:** SO de los equipos cliente unidos al dominio.

### 🌐 Redes y Comunicaciones (Cisco Packet Tracer)
* **Topología Avanzada:** Diseño de red escalable con redundancia.
* **Enrutamiento y Segmentación:** Protocolo **OSPF**, implementación de **VLANs** departamentales y despliegue de **VPNs** para teletrabajo seguro.
* **Seguridad:** Listas de Control de Acceso (**ACLs**) perimetrales e internas.

### 🗄️ Bases de Datos y Entorno Web
* **PostgreSQL:** Motor de base de datos relacional robusto para la gestión de la empresa.
* **Backend:** Programación en **PHP** para la conexión nativa a la BBDD.
* **Frontend:** Desarrollo de la interfaz de gestión en **HTML5** y **CSS** (editado en VS Code).
* **Gestión de Backups:** Políticas de copias de seguridad automatizadas de la base de datos y restauración.

### 📄 Gestión de Datos Estructurados (Marcas)
* **XML y XSD:** Uso real y validación estricta de documentos estructurados para el **Inventariado de Hardware**, control de mantenimientos y cálculo del TCO (*Total Cost of Ownership*).

### ☁️ Cloud Computing (AWS)
* **Amazon Web Services (AWS):** Uso de servicios reales en la nube para planificar, documentar y ejecutar la migración de servicios críticos de la consultoría, garantizando alta disponibilidad.

---

## 🗂️ Estructura del Repositorio (Módulos ASIR)

El proyecto está dividido en 7 fases modulares que se integran entre sí, reflejando el flujo de trabajo de un departamento de sistemas real:

| Módulo | Área ASIR | Descripción del Contenido |
| :--- | :--- | :--- |
| **[📂 1_Hardware](./1_Hardware)** | *Fundamentos de Hardware* | Análisis de necesidades, selección de servidores, almacenamiento, presupuestos y justificación del TCO documentado. |
| **[📂 2_Sistemas](./2_Sistemas)** | *Sistemas Operativos* | Despliegue en VirtualBox, configuración de Ubuntu Server/Windows Server, y administración de Active Directory. |
| **[📂 3_Redes](./3_Redes)** | *Planificación de Redes* | Archivos de Packet Tracer, esquemas de direccionamiento IP, OSPF, VLANs, túneles VPN y reglas ACL. |
| **[📂 4_BBDD](./4_Bases_de_Datos)** | *Gestión de BBDD* | Modelo E/R, scripts de creación en PostgreSQL, políticas de backups, roles de usuario y consultas de explotación. |
| **[📂 5_Marcas](./5_Marcas)** | *Lenguajes de Marcas* | Archivos de configuración, portal web (HTML5/CSS/PHP) y validación de inventario (XML/XSD). |
| **[📂 6_Cloud](./6_Cloud)** | *Computación en la Nube* | Diseño de arquitectura AWS, justificación de migración, estimación de costes mensuales y despliegue híbrido. |
| **[📂 7_Empleabilidad](./7_Empleabilidad)** | *FOL / Itinerario* | Perfil profesional, investigación de mercado, reflexiones del proyecto y material preparado para entrevistas. |

---

## 🚀 Hitos Técnicos Destacados
1. **Integración Total:** La base de datos en PostgreSQL no es un ente aislado; se conecta en tiempo real mediante PHP alojado en un servidor web Apache sobre Ubuntu Server.
2. **Seguridad en Capas:** Desde ACLs en la capa de red hasta permisos de Active Directory en la capa de sistema y roles en PostgreSQL.
3. **Validación Documental:** El inventario de hardware de la consultoría está estandarizado en XML y validado contra esquemas XSD propios, permitiendo su futura integración con herramientas de terceros.
4. **Enfoque Cloud-Ready:** Preparación de la infraestructura local con una proyección clara y presupuestada hacia AWS.

---
*👤 Autor: Javier Ordóñez Muñoz* *💻 Diseñado como proyecto de portfolio para el acceso al sector profesional de la Administración de Sistemas y Cloud.*
