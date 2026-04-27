# 📄 Módulo 5: Lenguajes de Marcas
# 📄 Gestión de Información y Capa Web | TechNova Solutions S.L.

Este módulo se encarga de la estructuración, validación y presentación de los activos digitales de la consultora. Aquí es donde se define el "diccionario de datos" que luego será consumido por el resto de la infraestructura.

## 🧩 Interconexión Intermodular (El origen de los datos)
Lenguaje de Marcas no es solo "hacer una web", es la base de datos documental de la empresa:

* **Redes (Módulo 3):** La infraestructura de red permite que los archivos de inventario XML sean accesibles y validados de forma centralizada en la intranet.
* **Sistemas (Módulo 2):** Los servicios web se despliegan sobre un servidor **Apache en Ubuntu Server**, que es el encargado de servir la capa de presentación (HTML/CSS) diseñada en este módulo.
* **Bases de Datos (Módulo 4):** El modelado de datos en XML sirve como paso previo y esquema de referencia para la futura migración a un sistema **PostgreSQL**, garantizando que la estructura de la información sea coherente.

---

## 🛠️ Implementación Técnica y Control de Calidad

### 1. Modelado de Datos Documentales (XML)
He estructurado la información crítica de la consultora en dos grandes bloques:
* **Gestion.xml:** Inventario completo de activos IT (Hardware) y gestión del capital humano (Recursos Humanos).
* **Servicios.xml:** Catálogo comercial de servicios de consultoría, IA y Ciberseguridad.

### 2. Blindaje de Información (XSD)
Para evitar errores humanos y asegurar la integridad de la información, he diseñado esquemas de validación **XSD (XML Schema Definition)**:
* **Reglas de integridad:** Validación estricta de tipos de datos, patrones (regex) y cardinalidad.
* **Cero Errores:** Todos los archivos han pasado un proceso de testing que garantiza que cualquier dato que entre en el sistema es válido.

### 3. Capa de Presentación (HTML5 & CSS3)
Diseño de la interfaz web corporativa de TechNova, enfocada en la usabilidad y la imagen profesional de una consultora tecnológica, utilizando estándares modernos de desarrollo web.

---

## 📂 Contenido de la Carpeta
| Archivo | Descripción |
| :--- | :--- |
| 📄 **[Memoria_Tecnica_Marcas.pdf](./INTERMODULAR_LENGUAJE_DE_MARCAS_JavierOrdoñez.pdf)** | Documento detallado con el roadmap de escalabilidad, capturas de validación y código. |
| 📂 **[Código Fuente (XML/XSD/HTML)](./src)** | (Opcional) Aquí puedes subir los archivos .xml, .xsd y el .html que has creado. |

---
> **Nota de escalabilidad:** El sistema está diseñado para que los archivos XML interactúen dinámicamente con el servidor en futuras fases de automatización del proyecto.
