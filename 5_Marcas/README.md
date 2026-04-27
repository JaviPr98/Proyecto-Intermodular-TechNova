# 📄 Módulo 5: Lenguajes de Marcas
# 📄 Gestión de Información Estructurada y Arquitectura Web | TechNova Solutions S.L.

Este módulo constituye la base documental y el "diccionario de datos" de **TechNova Solutions S.L.** No se trata simplemente de desarrollo web, sino de la creación de una **fuente de verdad única** y validada que asegura que toda la información crítica de la empresa (activos IT, personal y servicios) sea íntegra y consumible por otros sistemas.

---

## 🎯 Propósito y Visión de Negocio
En una consultora tecnológica, la calidad del dato es prioritaria. He diseñado este sistema bajo el estándar de **"Cero Errores"**, utilizando lenguajes de marcas para:
* **Estructurar el Conocimiento:** Organizar jerárquicamente la infraestructura y el capital humano.
* **Automatizar la Validación:** Eliminar el error humano mediante esquemas de control estrictos.
* **Proyectar Profesionalidad:** Crear una capa de presentación web que refleje la solvencia técnica de TechNova.

---

## 🏗️ Implementación Técnica: El Ecosistema XML
Se han desarrollado un total de **1.148 líneas de código** de alta precisión, divididas en dos grandes bloques de información:

### 1. Gestión de Activos y Capital Humano (`Gestion.xml`)
Este archivo actúa como el inventario central de la compañía.
* **Infraestructura IT:** Registro detallado de servidores (SRV), dispositivos de red y workstations, vinculando cada activo con sus especificaciones técnicas reales.
* **Recursos Humanos:** Organización de la plantilla por departamentos, roles y niveles de acceso, permitiendo una futura integración con servicios de directorio (Active Directory).

### 2. Catálogo de Servicios Comerciales (`Servicios.xml`)
Estructuración de la oferta de consultoría de TechNova en 5 áreas clave: Infraestructura IT, Cloud, Ciberseguridad, Consultoría y Desarrollo.
* **Parametrización:** Cada servicio incluye metadatos críticos como modalidad, duración estimada y precios base con precisión financiera.

---

## 🔐 Blindaje de Información (Esquemas XSD)
Para garantizar que la base de datos documental nunca contenga datos corruptos, he diseñado esquemas de validación **XSD** (`Gestion.xsd` de 363 líneas y `Servicios.xsd` de 207 líneas) con reglas extremas:

* **Patrones Regex:** Validación de identificadores mediante expresiones regulares complejas (ej. `EMP\d{3}` para empleados o `SRV-[A-Z]+-\d{2}` para servidores).
* **Restricciones de Cardinalidad:** Uso de reglas de ocurrencia (`minOccurs/maxOccurs`) para forzar que cada dispositivo tenga el número exacto de interfaces o CPUs requeridas.
* **Integridad Referencial (XPath):** Implementación de selectores `<xs:unique>` para asegurar que no existan IDs duplicados, simulando el comportamiento de una Primary Key de base de datos.
* **Listas Blancas (Enumeraciones):** Restricción de valores para departamentos, tipos de moneda y estados de hardware, evitando entradas de texto libre inconsistentes.

---

## 🎨 Capa de Presentación (HTML5 & CSS3)
Diseño del portal web corporativo siguiendo estándares modernos de desarrollo:
* **HTML5 Semántico:** Estructura limpia orientada al SEO y a la accesibilidad (`<header>`, `<main>`, `<section>`).
* **CSS3 Avanzado:** Uso de variables nativas (`:root`) para una gestión de estilos escalable y un diseño limpio que proyecta la identidad de marca de una consultora de alto nivel.

---

## 🧩 Integración Intermodular (Roadmap de Escalabilidad)
Este módulo es el "Nivel 0" que alimenta al resto del proyecto ASIR:
* **Redes (Módulo 3):** Los dispositivos documentados en el XML son los mismos que se configuran físicamente en la topología de red.
* **Sistemas Operativos (Módulo 2):** El servidor Apache en **Ubuntu Server** es el encargado de alojar y servir estos archivos XML y la web corporativa.
* **Bases de Datos (Módulo 4):** El modelado de datos realizado aquí sirve como esquema de referencia para la migración de los servicios y el inventario a un motor **PostgreSQL**.

---

## 📂 Contenido de la Carpeta
| Archivo | Descripción |
| :--- | :--- |
| 📄 **[Memoria_Tecnica_Marcas.pdf](./INTERMODULAR_LENGUAJE_DE_MARCAS.pdf)** | 31 páginas de análisis técnico, modelos relacionales de datos y evidencias de testing negativo. |
| 📁 **[src](./src)** | (Opcional) Subcarpeta con los archivos fuente: `.xml` (datos), `.xsd` (reglas) y `.html/.css` (presentación). |

---
> **Conclusión Profesional:** Dominar la estructura de la información mediante XML/XSD permite a un Administrador de Sistemas garantizar la consistencia de los datos en entornos empresariales complejos, facilitando la automatización y la interoperabilidad entre diferentes plataformas.
