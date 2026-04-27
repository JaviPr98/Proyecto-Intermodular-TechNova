# 🗄️ Módulo 4: Gestión de Bases de Datos
# 🗄️ Gestión de Bases de Datos | El Cerebro de TechNova Solutions

Este módulo representa el núcleo lógico y el centro de persistencia de **TechNova Solutions S.L.** No se ha diseñado como un simple almacén de datos, sino como un sistema transaccional robusto capaz de gestionar el ciclo de vida completo de la consultora: desde la infraestructura física hasta la facturación final al cliente.

---

## 🎯 Propósito y Visión de Negocio
En una consultora tecnológica, la información es el activo más valioso. He diseñado esta base de datos bajo la premisa de que **"tecnología que no sirve al negocio, es tecnología inútil"**. La estructura está pensada para:
* **Centralizar la Verdad:** Eliminar la redundancia de datos mediante una normalización estricta (3NF).
* **Garantizar la Integridad:** Asegurar que cada registro (un servidor, un empleado o una factura) sea coherente y esté protegido contra errores humanos o borrados accidentales.
* **Soportar la Operativa:** Facilitar la extracción de métricas clave para la toma de decisiones empresariales.

---

## 🏗️ Arquitectura Lógica y Diseño (Modelo E/R)
El sistema se compone de **15 entidades interconectadas** que cubren las cuatro etapas vitales de la empresa:

1.  **Capital Humano (Quiénes somos):** Gestión de empleados, departamentos y roles.
2.  **Infraestructura (Nuestras herramientas):** Registro de activos físicos y servidores virtuales, vinculando este módulo directamente con Hardware y Sistemas.
3.  **Actividad Operativa (Qué hacemos):** Catálogo de servicios de consultoría, IA y Ciberseguridad.
4.  **Flujo de Beneficios (Cómo cobramos):** Un sistema de facturación profesional que separa la cabecera del detalle para permitir una escalabilidad infinita en el volumen de ventas.

### 🔐 Blindaje de Datos (Reglas de Integridad)
* **Claves Primarias y Foráneas:** Implementación de una arquitectura relacional sólida para evitar registros huérfanos.
* **Acciones en Cascada:** Configuración de reglas `ON DELETE` y `ON UPDATE` estratégicas para mantener la consistencia sistémica.
* **Normalización:** Aplicación de las reglas de normalización para asegurar que cada dato se guarde en un solo lugar, optimizando el rendimiento de las consultas SQL.

---

## 🧩 Integración Intermodular (Sinergia de Datos)
Este no es un proyecto aislado; la base de datos es el punto de encuentro de todos los módulos de ASIR:

* **Redes (Módulo 3):** La tabla de `Departamentos` asume los parámetros de las **VLANs** diseñadas en la infraestructura de red.
* **Sistemas Operativos (Módulo 2):** La tabla de `Servidores_Virtuales` mapea los hipervisores y máquinas virtuales (Windows/Ubuntu) gestionados en el proyecto.
* **Lenguajes de Marcas (Módulo 5):** La estructura XML validada sirve como la "fuente de verdad" documental que alimenta los inserts masivos en este motor **PostgreSQL**.
* **Hardware (Módulo 1):** El inventario físico y el cálculo de TCO se ven reflejados en las tablas de activos fijos de la compañía.

---

## 🛠️ Implementación Técnica
* **Motor de BD:** PostgreSQL.
* **Lenguaje:** SQL (DDL para la creación de estructura y DML para la manipulación de datos).
* **Optimización:** Diseño de tablas optimizado para consultas masivas. Por ejemplo, la separación de `Factura` y `Detalle_Factura` permite gestionar desde un servicio puntual hasta el despliegue de infraestructuras en multinacionales con miles de líneas de detalle sin degradación de rendimiento.

---

## 📂 Contenido de la Carpeta
| Archivo | Descripción |
| :--- | :--- |
| 📄 **[Memoria_Tecnica_BBDD.pdf](./INTERMODULAR_BBDD.pdf)** | 31 páginas documentando el modelo Entidad-Relación, el diccionario de datos, el script SQL completo y las conclusiones de negocio. |
| 📁 **[Scripts_SQL](./scripts)** | (Opcional) Subcarpeta con los archivos `.sql` de creación de tablas e inserción de datos de prueba. |

---
> **Reflexión Técnica:** Una base de datos bien diseñada es el cimiento que sostiene la confianza de los clientes y el patrimonio de la empresa. Este diseño garantiza que TechNova pueda crecer de 10 a 1.000 empleados sin necesidad de reestructurar su núcleo de información.
