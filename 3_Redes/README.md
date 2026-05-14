# 🌐 Módulo 3: Planificación y Administración de Redes
## 🏗️ Infraestructura de Red y Conectividad | El Core Digital de TechNova Solutions

Este módulo representa la columna vertebral de **TechNova Solutions S.L.** Se ha diseñado una arquitectura de red jerárquica y resiliente, optimizada para soportar cargas de trabajo críticas de **IA y Big Data**, garantizando un flujo de datos seguro, redundante y de baja latencia.

---

## 🎯 Visión Estratégica
En un entorno de consultoría tecnológica, la red no es un servicio secundario; es el motor del negocio. Este diseño se basa en tres pilares:
* **Resiliencia Operativa:** Convergencia rápida mediante protocolos dinámicos para garantizar "zero-downtime".
* **Defensa en Profundidad:** Microsegmentación de red para aislar activos críticos y proteger la propiedad intelectual.
* **Agilidad y Escalabilidad:** Infraestructura preparada para el crecimiento orgánico mediante direccionamiento lógico eficiente.

---

## 🛠️ Implementación Técnica de Alto Nivel

### 1. Enrutamiento Dinámico y Alta Disponibilidad (OSPFv2)
Se ha desplegado **OSPFv2 en Área 0** para gestionar la comunicación entre el Core y el Perímetro:
* **Convergencia Automática:** Selección de rutas óptimas basadas en coste, permitiendo la re-convergencia ante fallos de enlace.
* **Inyección de Rutas:** Propagación dinámica de la ruta por defecto (`default-information originate`) hacia el núcleo de la red.

### 2. Gestión Centralizada de Direccionamiento (DHCP Relay)
A diferencia de configuraciones básicas, se ha implementado un **Servidor DHCP Centralizado** (10.10.100.10):
* **DHCP Relay Agent:** Configurado en el Switch Core mediante `ip helper-address` para permitir la asignación dinámica de IPs a través de múltiples VLANs.
* **Control de Ámbitos:** Reservas estratégicas para equipos de infraestructura y segmentación de DNS (Interno corporativo vs. Público de Google).

### 3. Seguridad Perimetral y Robustecimiento (Hardening)
* **NAT Estático y DMZ:** Publicación segura de servicios internos hacia Internet mediante traducción de direcciones en el Router de borde.
* **ACLs Extendidas:** Filtrado granular de tráfico (L3/L4) para proteger la zona de servidores y aislar totalmente la red de invitados (VLAN 50).
* **Acceso Administrativo Seguro:** Despliegue de **SSH v2** con cifrado RSA de 2048 bits en las líneas VTY, inhabilitando protocolos inseguros como Telnet.

### 4. Segmentación Lógica (VLANs)
* **VLAN 10-40 (Corporativas):** Segmentos específicos para Dirección, Sistemas, Desarrollo y Soporte.
* **VLAN 50 (Invitados):** Aislamiento total del tráfico externo para evitar accesos no autorizados a la LAN privada.
* **VLAN 100 (CPD):** Zona de alta seguridad para la granja de servidores y servicios críticos.

---

## 🧩 Sinergia Intermodular
La red actúa como el tejido conector que permite la integración de los demás módulos del proyecto:
* **Sistemas (M2):** Soporte de transporte para replicación de Active Directory y servicios de backup FTP.
* **Bases de Datos (M4):** Optimización de latencia para consultas SQL masivas y acceso seguro al motor PostgreSQL.
* **Hardware (M1):** Implementación física basada en estándares de cableado estructurado y electrónica de red Cisco Catalyst.

---

## 📂 Repositorio de Documentación
| Archivo | Descripción |
| :--- | :--- |
| 📄 **[INTERMODULAR_REDES_Javier_Ordoñez.pdf](./INTERMODULAR_REDES_Javier_Ordoñez.pdf)** | Memoria técnica completa (Plan de direccionamiento, topología y pruebas de estrés). |
| 📁 **[Topologia_Cisco_Packet_Tracer](./lab)** | Archivos `.pkt` con la simulación funcional de la infraestructura. |

---

> **Nota del Autor:** Esta implementación demuestra que la administración de redes moderna es el arte de gestionar la información en movimiento, priorizando siempre la seguridad, la redundancia y la disponibilidad del dato.
