# 🌐 Módulo 3: Planificación y Administración de Redes
# 🌐 Infraestructura de Red y Conectividad | El Sistema Circulatorio de TechNova

Este módulo constituye el soporte de comunicaciones de **TechNova Solutions S.L.** Se ha diseñado una red empresarial de alto rendimiento bajo una arquitectura jerárquica, garantizando que el flujo de datos entre servidores, bases de datos y usuarios sea seguro, rápido y redundante.

---

## 🎯 Propósito y Visión de Negocio
En una consultora que gestiona IA y Big Data, la red no puede ser un cuello de botella. La estrategia detrás de este diseño es:
* **Disponibilidad Total:** Implementación de protocolos que aseguren que la empresa nunca se detenga ante un fallo de enlace.
* **Seguridad por Diseño:** Segmentación estricta para proteger la propiedad intelectual y los datos de los clientes.
* **Escalabilidad Horizontal:** Capacidad para integrar nuevas sedes o departamentos mediante el uso de enrutamiento dinámico.

---

## 🏗️ Implementación Técnica de Nivel Consultoría

### 1. Enrutamiento Dinámico de Área Única (OSPFv2)
Para la gestión del tráfico entre los diferentes segmentos de la empresa, se ha implementado el protocolo **OSPF (Open Shortest Path First)** en el Área 0:
* **Eficiencia:** Selección de la ruta más corta basada en el coste del enlace (ancho de banda).
* **Resiliencia:** Re-convergencia automática de la red en segundos ante la caída de un router de core.

### 2. Segmentación Avanzada (VLANs e Inter-VLAN Routing)
Se ha roto el dominio de difusión único mediante la creación de redes lógicas independientes:
* **VLAN 10 (Dirección):** Tráfico prioritario y restringido.
* **VLAN 20 (Sistemas):** Acceso total a la infraestructura de gestión.
* **VLAN 30 (IA/Desarrollo):** Segmento de alta carga de datos con acceso directo a la granja de servidores.
* **VLAN 40 (Ventas/Comercial):** Acceso optimizado para servicios web y CRM.

### 3. Blindaje Perimetral (ACLs Extendidas)
Seguridad aplicada en la Capa 3 mediante Listas de Control de Acceso:
* **Filtrado de Protocolos:** Bloqueo de tráfico no deseado y securización de accesos administrativos mediante SSH (bloqueo de Telnet).
* **Aislamiento de Servidores:** Solo los puertos específicos (PostgreSQL 5432, HTTP 80) están abiertos hacia la zona de servidores.

### 4. Conectividad Remota y Alta Disponibilidad
* **VPN (Virtual Private Network):** Configuración de túneles seguros para permitir el teletrabajo y la interconexión con clientes externos sin exponer datos a la red pública.
* **DHCP y DNS Corporativo:** Automatización del direccionamiento IP y resolución de nombres para mejorar la experiencia del usuario final.

---

## 🧩 Integración Intermodular (Sinergia de Red)
La red es el tejido que une todas las asignaturas de ASIR en este proyecto:

* **Sistemas Operativos (M2):** Proporciona la infraestructura necesaria para el tráfico de replicación de **Active Directory**.
* **Bases de Datos (M4):** El diseño de la red garantiza que el servidor de base de datos esté en una zona protegida pero accesible con baja latencia.
* **Lenguajes de Marcas (M5):** Permite que los archivos de inventariado XML sean validados de forma centralizada en el servidor web de la intranet.
* **Hardware (M1):** Define la conectividad física de Capa 1, desde el cableado Cat.6a hasta la electrónica de red Cisco Catalyst.

---

## 📂 Contenido de la Carpeta
| Archivo | Descripción |
| :--- | :--- |
| 📄 **[Memoria_Tecnica_Redes.pdf](./INTERMODULAR_REDES.pdf)** | 32 páginas con el plan de direccionamiento, topología física/lógica y pruebas de estrés. |
| 📁 **[Topologia_Packet_Tracer](./lab)** | Archivos `.pkt` con la simulación completa y funcional de la red de TechNova. |

---
> **Conclusión Profesional:** Este diseño demuestra que la administración de redes moderna no se limita a "conectar cables", sino a gestionar de forma inteligente y segura el recurso más crítico de la empresa: la información en movimiento.
