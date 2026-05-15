# 🗄️ Módulo 4: Gestión de Bases de Datos
## Configuración y Administración de la Base de Datos - Proyecto TechNova

En este módulo he diseñado e implementado el modelo relacional de datos para TechNova Solutions S.L. La base de datos no es un simple almacén de información suelta, sino un sistema centralizado en PostgreSQL que gestiona desde el inventario físico de la empresa hasta la lógica de facturación de los clientes.

---

## 🎯 Objetivos del diseño
He estructurado la base de datos basándome en tres principios técnicos:
* **Normalización estricta (3FN):** He diseñado las tablas aplicando la Tercera Forma Normal para eliminar la duplicidad de datos, optimizar el espacio en disco y evitar fallos al actualizar la información.
* **Integridad y Seguridad Referencial:** He configurado claves primarias (PK), foráneas (FK) y reglas de borrado (`ON DELETE RESTRICT` / `CASCADE`) para que el sistema sea consistente y no permita registros huérfanos.
* **Seguridad por Roles (DCL):** He aplicado el principio de menor privilegio creando accesos separados para los departamentos de Recursos Humanos y Contabilidad, limitando los permisos de borrado.

---

## 🏗️ Estructura del Sistema (15 Tablas)
He organizado el esquema relacional en cuatro bloques operativos:

1. **Recursos Humanos:** Control de la plantilla de trabajadores, departamentos y un catálogo de especialidades técnicas (`Junior`, `Mid`, `Senior`).
2. **Infraestructura e Inventario:** Registro del hardware físico del CPD (racks, modelos de routers/switches Cisco) y control de las máquinas virtuales (Sistemas Operativos e IPs asignadas).
3. **Operaciones y SOC:** Gestión de proyectos activos, asignación de horas de los técnicos para evitar sobrecargas laborales y una tabla de logs para registrar alertas de seguridad críticas.
4. **Finanzas y Facturación:** Un sistema modular que separa la cabecera de la factura de sus líneas de detalle, aislando los tipos de IVA en una tabla independiente para facilitar cambios legales futuros.

---

## 🛠️ Implementación y Automatización Técnica
* **Motor de Base de Datos:** PostgreSQL.
* **Integridad en Servidores:** He configurado un borrado en cascada en el bloque de virtualización. Si elimino una máquina virtual, se borran automáticamente sus alertas y sus backups históricos.
* **Automatización de Backups:** He programado un script en Bash (`backup_technova.sh`) ejecutado mediante una tarea nocturna en Cron (`03:00 AM`) que realiza un volcado lógico con `pg_dump`, comprime el archivo en `.tar.gz` y simula su envío externo (regla 3-2-1).

---

## 🔗 Relación con otros módulos
La base de datos recopila la información técnica de los demás módulos del proyecto:
* **Redes (M3):** La tabla de `departamento` incluye el campo `vlan_id`, vinculando el organigrama de la empresa con el direccionamiento y segmentación de red que hice en Packet Tracer.
* **Sistemas Operativos (M2):** En la tabla `servidor_virtual` quedan registrados los sistemas operativos (Ubuntu/Windows) y las IPs que configuré en las instancias del CPD.
* **Hardware (M1):** La tabla `equipo_fisico` actúa como el inventario real de los routers, switches y la ubicación física en los racks del armario de comunicaciones.

---

## 📂 Archivos del proyecto
| Archivo | Qué es |
| :--- | :--- |
| 📄 **[INTERMODULAR_BBDD.pdf](./INTERMODULAR_BBDD.pdf)** | Memoria técnica completa (Diccionario de datos, consultas avanzadas SELECT y conclusiones). |
| 🗄️ **[TechNova.SQL](./TechNova.SQL)** | Script SQL completo con el código DDL (creación de tablas) y DML (inserción de datos de prueba). |
| 🖼️ **[E_R TechNova.png](./E_R%20TechNova.png)** | Diagrama Entidad-Relación conceptual del sistema. |
| 🛠️ **[Relational_TechNova.pgerd](./Relational_TechNova.pgerd)** | Archivo de diseño del Modelo Relacional físico para pgAdmin. |

---

> **Resumen:** He implementado una base de datos normalizada, segura mediante roles restringidos y con copias de seguridad automatizadas, preparada para soportar el crecimiento operativo de la consultora.
