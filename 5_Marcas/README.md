# 🏗️ Módulo 5: Lenguajes de Marcas - TechNova Solutions S.L.

### Gestión de Información Estructurada y Arquitectura Web 🌐

Este repositorio constituye la base documental y de datos de **TechNova Solutions S.L.**. En este módulo, no me he limitado al desarrollo web convencional, sino que **he diseñado una arquitectura de información validada** que asegura que todos los datos críticos de la empresa (activos IT, personal y servicios) sean íntegros, consistentes y consumibles por otros sistemas del ciclo.

---

## 🎯 Propósito y Visión del Sistema

En una consultora tecnológica, la calidad del dato es prioritaria. **He enfocado este sistema** bajo el estándar de "Cero Errores", utilizando lenguajes de marcas para:

* **Estructurar el Conocimiento:** Organizar jerárquicamente la infraestructura y el capital humano.
* **Automatizar la Validación:** 🔐 Eliminar el error humano mediante esquemas de control estrictos.
* **Proyectar Profesionalidad:** Crear una capa de presentación web que refleje la solvencia técnica de TechNova.

---

## 🏗️ Implementación Técnica: El Ecosistema XML

**He desarrollado un total de 1.148 líneas de código** de precisión, divididas en dos grandes bloques de información jerárquica:

### 1. Gestión de Activos y Capital Humano (`Gestion.xml`) 🌳
Este archivo actúa como el inventario central de la compañía:
* **Infraestructura IT:** Registro detallado de servidores (SRV), dispositivos de red y workstations, vinculando cada activo con sus especificaciones técnicas reales.
* **Recursos Humanos:** Organización de la plantilla por departamentos, roles y niveles de acceso, permitiendo una futura integración con servicios de directorio (Active Directory).

### 2. Catálogo de Servicios Comerciales (`Servicios.xml`) 📑
**He estructurado la oferta de consultoría** en 5 áreas clave: Infraestructura IT, Cloud, Ciberseguridad, Consultoría y Desarrollo.
* **Parametrización:** Cada servicio incluye metadatos críticos como modalidad, duración estimada y precio base con precisión financiera.

---

## 🔐 Blindaje de Información (Esquemas XSD)

Para garantizar que la base de datos documental nunca contenga datos corruptos, **he diseñado esquemas de validación XSD** (`Gestion.xsd` de 363 líneas y `Servicios.xsd` de 207 líneas) con reglas de validación avanzadas:

* **Patrones Regex 🔬:** Validación de identificadores mediante expresiones regulares complejas (ej. `EMP\d{3}` para empleados).
* **Restricciones de Cardinalidad ⚙️:** Uso de reglas `minOccurs/maxOccurs` para forzar la estructura exacta de interfaces o CPUs requeridas.
* **Integridad Referencial 🔗:** Implementación de selectores `<xs:unique>` para asegurar que no existan IDs duplicados, simulando una *Primary Key*.
* **Listas Blancas 🧪:** Restricción de valores mediante enumeraciones para departamentos y tipos de moneda, evitando inconsistencias.

---

## 🎨 Capa de Presentación (HTML5 & CSS3)

**He diseñado el portal web corporativo** siguiendo estándares modernos de desarrollo:
* **HTML5 Semántico:** Estructura limpia orientada al SEO y a la accesibilidad (`<header>`, `<main>`, `<section>`).
* **CSS3 Avanzado 💅:** Uso de variables nativas (`:root`) para una gestión de estilos escalable y un diseño limpio que proyecta nuestra identidad de marca.

---

## 🧩 Integración Intermodular (Roadmap de Escalabilidad)

Este módulo es el "Nivel 0" que alimenta al resto de mi proyecto de ASIR:
* **Redes (Módulo 3):** Los dispositivos documentados en el XML son los mismos que he configurado físicamente en la topología de Packet Tracer.
* **Sistemas Operativos (Módulo 2):** El servidor Apache en Ubuntu Server es el encargado de alojar y servir estos archivos.
* **Bases de Datos (Módulo 4):** El modelado de datos realizado aquí sirve como esquema de referencia para la migración a PostgreSQL.

---

## 📂 Contenido del Repositorio

| Archivo / Carpeta | Descripción |
| :--- | :--- |
| 📄 [**INTERMODULAR LENGUAJE DE MARCAS.pdf**](./INTERMODULAR%20LENGUAJE%20DE%20MARCAS.pdf) | Análisis técnico completo, modelos relacionales y evidencias de testing. |
| 📁 [**HTML TECHNOVA/**](./HTML%20TECHNOVA/) | Subcarpeta con los archivos fuente reales: `.xml`, `.xsd`, `.html` y `.css`. |

---

> **Conclusión Profesional:** Como  Administrador de Sistemas, **considero que dominar la estructura de la información** mediante XML/XSD es vital para garantizar la consistencia de los datos, facilitando la automatización y la interoperabilidad en entornos empresariales complejos.
