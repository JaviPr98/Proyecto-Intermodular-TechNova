# 🌐 Módulo 3: Planificación y Administración de Redes
## Configuración de Red y Conectividad - Proyecto TechNova

En este apartado detallo cómo he montado la red de la empresa. He usado una estructura jerárquica para que todo sea rápido, no haya fallos de conexión y los datos vayan seguros entre los servidores y los usuarios.

---

## 🎯 Objetivos del diseño
He configurado la red pensando en tres cosas:
* **Que no se caiga:** Si falla un cable o un router, la red busca otro camino sola.
* **Seguridad real:** Cada departamento está en su sitio y nadie entra donde no debe.
* **Fácil de ampliar:** Si mañana hay más gente o más oficinas, no hay que romper nada para que funcione.

---

## 🛠️ Configuración Técnica

### 1. Enrutamiento con OSPFv2
He usado **OSPF en el Área 0** para que el Core y el Router se hablen automáticamente:
* **Rutas automáticas:** Los equipos eligen siempre el camino más rápido.
* **Recuperación de fallos:** Si un enlace se corta, la red se reconfigura en segundos.
* **Ruta por defecto:** El router le "pasa" la salida a Internet al switch automáticamente.

### 2. DHCP Centralizado (Relay)
No he puesto un DHCP en cada router. He montado un **Servidor DHCP central** (10.10.100.10):
* **Helper Address:** El Switch Core reenvía las peticiones de los PCs de cada VLAN al servidor.
* **Orden de IPs:** He reservado las primeras 10 IPs de cada red para que no choquen con servidores o impresoras.

### 3. Seguridad y Hardening
* **NAT Estático:** He abierto el servidor web a Internet usando la IP pública 80.58.1.1.
* **ACLs (Listas de Control):** He filtrado el tráfico para que la VLAN de Invitados no pueda tocar nada de la empresa y para proteger los servidores.
* **SSH v2:** He desactivado Telnet. Ahora solo se puede entrar a configurar los equipos por SSH cifrado con claves de 2048 bits.

### 4. VLANs (Segmentación)
He dividido la red para que el tráfico no se mezcle:
* **VLAN 10-40:** Dirección, Sistemas, Desarrollo y Soporte.
* **VLAN 50:** Invitados (aislada de todo lo demás).
* **VLAN 100:** Servidores y servicios críticos.

---

## 🧩 Relación con otros módulos
La red es la base donde funcionan los demás trabajos del proyecto:
* **Sistemas (M2):** Por aquí pasan los datos de Active Directory y los backups por FTP.
* **Bases de Datos (M4):** He configurado la red para que las consultas a PostgreSQL vayan rápido y seguras.
* **Hardware (M1):** Aquí se aplica todo lo de cableado y los modelos de routers y switches Cisco.

---

## 📂 Archivos del proyecto
| Archivo | Qué es |
| :--- | :--- |
| 📄 **[INTERMODULAR_REDES_Javier_Ordoñez.pdf](./INTERMODULAR_REDES_Javier_Ordoñez.pdf)** | Memoria completa con la tabla de IPs y las pruebas de ping. |
| 📁 **[RED CONFIGURADA TechNova Solutions S.L.pkt](./RED%20CONFIGURADA%20TechNova%20Solutions%20S.L.pkt)** | El archivo de Packet Tracer para cargarlo y probarlo. |

---

> **Resumen:** He montado una red funcional, segura y fácil de administrar, lista para un entorno de trabajo real.
