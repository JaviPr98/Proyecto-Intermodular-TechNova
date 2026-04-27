# 🌐 Módulo 3: Planificación y Administración de Redes
# 🌐 Infraestructura de Red de Datos | Módulo Central TechNova
Este directorio contiene el diseño y la implementación de la capa de comunicaciones que sostiene toda la infraestructura de **TechNova Solutions S.L.**

## 🧩 Interconexión Intermodular (Visión de Administrador)
La red diseñada no es un entorno aislado, sino el "sistema circulatorio" del proyecto:

* **Sistemas Operativos (Módulo 2):** La red permite la comunicación del controlador de dominio (Windows Server) con los clientes Windows 11 y Ubuntu Server, gestionando el tráfico de autenticación **Active Directory**.
* **Gestión de Bases de Datos (Módulo 4):** Se ha diseñado un segmento específico (**Granja de Servidores**) con seguridad reforzada para alojar el servidor **PostgreSQL**, garantizando que las consultas desde la planta de desarrollo sean fluidas y seguras.
* **Lenguajes de Marcas (Módulo 5):** La infraestructura soporta el tráfico del servidor web Apache, permitiendo la validación de inventarios **XML/XSD** a través de la red local.

---

## 🛠️ Implementación Técnica de Alto Rendimiento

### 1. Enrutamiento Dinámico (OSPFv2)
Se ha implementado **OSPF** en Área 0 para garantizar:
* **Convergencia rápida:** Si un enlace falla, la red recalcula la ruta automáticamente.
* **Escalabilidad:** Preparada para añadir nuevas plantas o sucursales sin reconfigurar toda la red.

### 2. Seguridad Avanzada y Filtrado (ACLs)
A diferencia de una red doméstica, aquí aplicamos **seguridad perimetral** mediante listas de control de acceso extendidas:
* **Hardening:** Bloqueo de protocolos inseguros y acceso restringido por Telnet/SSH.
* **Segmentación de Servicios:** Solo el Administrador de Sistemas tiene acceso total a la configuración de los equipos de red.
* **Control ICMP:** Gestión del protocolo de diagnóstico para evitar ataques de reconocimiento (Reconnaissance).

### 3. Diseño Jerárquico
Uso del modelo de **dos capas (Core y Acceso)** para reducir los dominios de colisión y facilitar el mantenimiento de la electrónica de red (Cisco 2911 y 2960).

### 4. Conectividad VPN
He configurado túneles VPN para permitir el acceso remoto seguro a la red corporativa. Esto permite que los trabajadores se conecten desde fuera de la oficina manteniendo la seguridad y el cifrado de los datos.

### 5. Segmentación por VLANs
He implementado VLANs para separar el tráfico de los distintos departamentos (Administración, Ventas, Sistemas). Esto mejora la seguridad interna y asegura que los fallos en una red local no afecten al resto de la empresa.

---

## 📂 Contenido del Repositorio
| Archivo | Descripción |
| :--- | :--- |
| **[Memoria Técnica (PDF)](./INTERMODULAR_REDES_Javier_Ordoñez.pdf)** | 32 páginas de análisis detallado, tablas de direccionamiento e inventario. |
| **[Topología Packet Tracer (.pkt)](./TechNova_Redes_Final.pkt)** | Laboratorio funcional con toda la lógica de enrutamiento y seguridad aplicada. |

---
> **Nota técnica:** Esta red ha sido estresada mediante pruebas de simulación para garantizar que el retardo (delay) sea mínimo en el acceso a los servicios de Base de Datos y Aplicaciones Web de la consultora.
