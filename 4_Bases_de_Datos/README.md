# 🗄️ Módulo 4: Gestión de Bases de Datos
## Configuración y Administración de la Base de Datos - Proyecto TechNova

En este módulo he diseñado e implementado el modelo relacional de datos para TechNova Solutions S.L. La base de datos está centralizada en PostgreSQL y se encarga de gestionar de forma estructurada toda la información de la empresa: desde la plantilla de trabajadores y el inventario del CPD, hasta el monitoreo de alertas de seguridad y la facturación de clientes.

---

## 🎯 Objetivos del diseño
He estructurado la base de datos basándome en tres principios técnicos:
* **Normalización estricta (3FN):** He aplicado las reglas de la Tercera Forma Normal para eliminar la redundancia de datos, optimizar el rendimiento del servidor y evitar problemas lógicos al actualizar registros.
* **Integridad Referencial:** He configurado claves primarias (PK), foráneas (FK) y reglas de borrado restrictivas (`ON DELETE RESTRICT`) y destructivas (`ON DELETE CASCADE`) para mantener la coherencia del sistema y evitar datos huérfanos.
* **Control de Accesos (DCL):** He aplicado la política de menor privilegio creando roles específicos para Recursos Humanos y Contabilidad, limitando las acciones de borrado y aislando el acceso a las tablas que no corresponden a sus funciones.

---

## 🏗️ Estructura del Sistema (15 Tablas)
El esquema relacional está dividido en cuatro bloques jerárquicos:

1. **Recursos Humanos:** Gestión de los datos personales de la plantilla, departamentos de la consultora y asignación de tecnologías por niveles (`Junior`, `Mid`, `Senior`).
2. **Infraestructura e Inventario:** Control físico del hardware (armarios rack, routers y switches Cisco) y mapeo lógico de las máquinas virtuales alojadas en los servidores maestros.
3. **Operaciones y SOC:** Trazabilidad de los proyectos activos, control de horas asignadas a los técnicos para evitar saturación y un histórico de alertas críticas de ciberseguridad.
4. **Finanzas y Facturación:** Un sistema modular que separa la cabecera del documento mercantil de sus líneas de detalle, aislando el cálculo del IVA en una tabla propia para facilitar futuras actualizaciones legales.

---

## 🛠️ Implementación y Mantenimiento Técnico
* **Motor de BD:** PostgreSQL.
* **Acciones en Cascada:** Implementadas en el entorno virtual. Si doy de baja una máquina virtual en el sistema, el motor elimina automáticamente sus logs de seguridad y sus copias de seguridad asociadas, limpiando el entorno de forma automatizada.
* **Automatización de Backups:** He programado un script en Bash (`backup_technova.sh`) automatizado en Cron para ejecutarse todas las noches a las `03:00 AM`. El script realiza un volcado lógico con `pg_dump`, comprime el archivo en formato `.tar.gz` y limpia el archivo temporal plano para proteger el almacenamiento.

---

## 🔗 Relación con otros módulos
La base de datos consolida la información técnica que he trabajado en las demás asignaturas:
* **Redes (M3):** La tabla `departamento` incluye el campo `vlan_id`, vinculando el organigrama de la empresa con la segmentación de red configurada en Cisco Packet Tracer.
* **Sistemas Operativos (M2):** La tabla `servidor_virtual` registra los sistemas operativos (Ubuntu/Windows) y las IPs privadas que administro en los servidores del CPD.
* **Hardware (M1):** La tabla `equipo_fisico` mapea el inventario real de los dispositivos, sus IPs de gestión y su ubicación exacta en los racks.

---

## 📂 Archivos del proyecto
| Archivo | Qué es |
| :--- | :--- |
| 📄 **[INTERMODULAR_BBDD.pdf](./INTERMODULAR_BBDD.pdf)** | Memoria técnica completa (Diccionario de datos, consultas avanzadas SELECT y conclusiones). |
| 🗄️ **[TechNova.SQL](./TechNova.SQL)** | Script SQL completo con el código DDL (creación de tablas) y DML (inserción de datos de prueba). |
| 🖼️ **[E_R TechNova.png](./E_R%20TechNova.png)** | Diagrama Entidad-Relación conceptual del sistema. |
| 🛠️ **[Relacional_TechNova.pgerd](./Relacional_TechNova.pgerd)** | Modelo Relacional físico para pgAdmin. *(Nota: GitHub no ofrece vista previa de este formato nativo; es necesario descargarlo localmente para abrirlo desde la herramienta pgAdmin 4).* |

---

> **Resumen:** He implementado una infraestructura de datos normalizada, segura mediante roles de base de datos y con una política de copias de seguridad automatizada, preparada para soportar el crecimiento de la consultora.
