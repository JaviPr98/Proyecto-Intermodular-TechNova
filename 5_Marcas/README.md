# 🚀 Módulo 5: Lenguajes de Marcas - TechNova Solutions S.L.

### Gestión de Información Estructurada y Arquitectura Web

[cite_start]Este repositorio constituye la base documental y de datos de **TechNova Solutions S.L.**[cite: 1, 2]. [cite_start]Para este módulo, no me he limitado al desarrollo web convencional, sino que he creado una fuente de información validada que asegura que todos los datos críticos de la empresa (activos IT, personal y servicios) sean íntegros y puedan ser consumidos por otros sistemas[cite: 1].

---

## 🎯 Propósito y Visión de Negocio

En una consultora tecnológica, la calidad del dato es prioritaria. He diseñado este sistema bajo el estándar de **"Cero Errores"**, utilizando lenguajes de marcas para:

* [cite_start]**Estructurar el Conocimiento:** Organizar jerárquicamente la infraestructura y el capital humano[cite: 1].
* [cite_start]**Automatizar la Validación:** Eliminar el error humano mediante esquemas de control estrictos[cite: 1].
* [cite_start]**Proyectar Profesionalidad:** Crear una capa de presentación web que refleje la solvencia técnica de TechNova[cite: 1].

---

## 🏗️ Implementación Técnica: El Ecosistema XML

[cite_start]Se han desarrollado un total de **1.148 líneas de código** de precisión, divididas en dos grandes bloques de información[cite: 1]:

### 1. Gestión de Activos y Capital Humano (`Gestion.xml`)
[cite_start]Este archivo actúa como el inventario central de la compañía[cite: 1]:
* [cite_start]**Infraestructura IT:** Registro detallado de servidores (SRV), dispositivos de red y workstations, vinculando cada activo con sus especificaciones técnicas reales[cite: 1, 140, 247].
* [cite_start]**Recursos Humanos:** Organización de la plantilla por departamentos, roles y niveles de acceso, permitiendo una futura integración con servicios de directorio como Active Directory[cite: 1].

### 2. Catálogo de Servicios Comerciales (`Servicios.xml`)
[cite_start]Estructuración de la oferta de consultoría de TechNova en 5 áreas clave: **Infraestructura IT, Cloud, Ciberseguridad, Consultoría y Desarrollo**[cite: 1].
* [cite_start]**Parametrización:** Cada servicio incluye metadatos críticos como modalidad, duración estimada y precios base con precisión financiera[cite: 1].

---

## 🔐 Blindaje de Información (Esquemas XSD)

[cite_start]Para garantizar que la base de datos documental nunca contenga datos corruptos, he diseñado esquemas de validación XSD (`Gestion.xsd` de 363 líneas y `Servicios.xsd` de 207 líneas) con reglas extremas[cite: 1]:

* [cite_start]**Patrones Regex:** Validación de identificadores mediante expresiones regulares complejas (ej. `EMP\d{3}` para empleados o `SRV-[A-Z]+-\d{2}` para servidores)[cite: 1].
* [cite_start]**Restricciones de Cardinalidad:** Uso de reglas de ocurrencia (`minOccurs`/`maxOccurs`) para forzar que cada dispositivo tenga el número exacto de interfaces o CPUs requeridas[cite: 1].
* [cite_start]**Integridad Referencial (XPath):** Implementación de selectores `<xs:unique>` para asegurar que no existan IDs duplicados, simulando el comportamiento de una Primary Key de base de datos[cite: 1].
* [cite_start]**Listas Blancas (Enumeraciones):** Restricción de valores para departamentos, tipos de moneda y estados de hardware, evitando entradas de texto libre inconsistentes[cite: 1].

---

## 🎨 Capa de Presentación (HTML5 & CSS3)

[cite_start]Diseño del portal web corporativo siguiendo estándares modernos de desarrollo[cite: 1]:
* [cite_start]**HTML5 Semántico:** Estructura limpia orientada al SEO y a la accesibilidad utilizando etiquetas como `<header>`, `<main>` y `<section>`[cite: 1].
* [cite_start]**CSS3 Avanzado:** Uso de variables nativas (`:root`) para una gestión de estilos escalable y un diseño limpio que proyecta la identidad de marca de TechNova[cite: 1].

---

## 🧩 Integración Intermodular (Roadmap de Escalabilidad)

[cite_start]Este módulo es la base que alimenta al resto del proyecto ASIR[cite: 1]:
* [cite_start]**Redes (Módulo 3):** Los dispositivos documentados en el XML son los mismos que se configuran físicamente en la topología de red de Packet Tracer[cite: 1, 248].
* [cite_start]**Sistemas Operativos (Módulo 2):** El servidor Apache en Ubuntu Server es el encargado de alojar y servir estos archivos XML y la web corporativa[cite: 1, 59, 211].
* [cite_start]**Bases de Datos (Módulo 4):** El modelado de datos realizado aquí sirve como esquema de referencia para la migración a un motor PostgreSQL[cite: 1].

---

## 📂 Contenido del Repositorio

| Archivo / Carpeta | Descripción |
| :--- | :--- |
| `MEMORIA_MARCAS.pdf` | [cite_start]31 páginas de análisis técnico, modelos relacionales y evidencias de testing [cite: 1, 132-136]. |
| `HTML_TECHNOVA/` | Subcarpeta con los archivos fuente: `.xml` (datos), `.xsd` (reglas) y `.html` / `.css` (presentación)[cite: 1]. |

---

> [cite_start]**Conclusión Profesional:** Dominar la estructura de la información mediante XML/XSD permite a un Administrador de Sistemas garantizar la consistencia de los datos en entornos empresariales complejos, facilitando la automatización y la interoperabilidad entre diferentes plataformas[cite: 1].
