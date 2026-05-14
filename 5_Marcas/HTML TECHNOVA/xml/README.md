# 📋 Documentación del Sistema XML/XSD - TechNova Solutions

## 📌 Información del Proyecto

**Proyecto:** Sistema de Gestión de Inventario IT  
**Empresa:** TechNova Solutions S.L.  
**Autor:** Javier Ordóñez Muñoz  
**Módulo:** Lenguajes de Marcas y Sistemas de Gestión de Información (0373)  
**Curso:** 1º ASIR - Proyecto Intermodular  
**Fecha:** Abril 2026

---

## 🎯 Objetivo del Proyecto

Este proyecto implementa un sistema de gestión de información estructurada mediante XML y XSD para representar el inventario completo de recursos tecnológicos y humanos de TechNova Solutions, una consultora técnica especializada en infraestructura IT.

### Propósito del XML

El archivo XML sirve como:
- **Exportación de datos** del sistema de gestión interno
- **Documentación técnica** del inventario de activos IT
- **Intercambio de información** entre sistemas
- **Backup estructurado** de la configuración de equipamiento

---

## 📁 Estructura de Archivos

```
xml/
├── Gestion.xml              # XML válido con datos reales de la empresa
├── Gestion.xsd              # Esquema XSD con validaciones estrictas
├── Gestion_invalido.xml     # Ejemplo de XML inválido para testing
├── README.md                # Esta documentación
└── validacion/              # Evidencias de validación
    ├── validacion_correcta.png
    └── validacion_error.png
```

---

## 📊 Contenido del XML

### 1️⃣ Sección: Usuarios/Empleados

Representa el personal de la empresa con su equipamiento asignado:

**Elementos incluidos:**
- **Datos personales:** Nombre, Departamento, Cargo
- **Equipamiento:** Dispositivos (laptops, workstations, desktops)
- **Componentes hardware:** CPU, RAM, Almacenamiento, GPU (opcional)
- **Telefonía:** Terminales móviles asignados (opcional)
- **Periféricos:** Monitores, teclados, ratones, auriculares (opcional)
- **Precios:** Valoración económica de cada activo

**Ejemplo:**
```xml
<Empleado id="EMP001">
    <Nombre>Jaime Sistema</Nombre>
    <Departamento>Sistemas</Departamento>
    <Cargo>Senior Infrastructure Admin</Cargo>
    <EquipamientoAsignado>
        <Dispositivo tipo="Laptop Workstation">
            <Marca>Lenovo ThinkPad P16 G2</Marca>
            <Componentes>
                <CPU>Intel i9-13980HX</CPU>
                <RAM unidad="GB">64</RAM>
                <Almacenamiento unidad="TB">2 NVMe Gen4</Almacenamiento>
                <GPU>NVIDIA RTX A2000 8GB</GPU>
            </Componentes>
            <Precio moneda="EUR">3450.00</Precio>
        </Dispositivo>
    </EquipamientoAsignado>
</Empleado>
```

### 2️⃣ Sección: Infraestructura IT

Documenta la infraestructura física de red y servidores:

**Subsecciones:**

#### A) Armarios Rack
- Modelo y ubicación física
- Equipamiento de red (switches, routers, SAI)
- Servidores físicos con especificaciones

#### B) Conectividad
- Cableado estructurado
- Puntos de acceso WiFi
- Sistema de telefonía IP

**Ejemplo:**
```xml
<Servidor id="SRV-PROD-01">
    <Rol>Host Virtualización (VMware ESXi / Proxmox)</Rol>
    <Componentes>
        <CPU>2x Intel Xeon Silver 4410Y (24 Cores total)</CPU>
        <RAM unidad="GB">256 DDR5 ECC</RAM>
        <Almacenamiento unidad="TB">8 (4x2TB NVMe Hot-Swap)</Almacenamiento>
    </Componentes>
    <Precio moneda="EUR">11500.00</Precio>
</Servidor>
```

---

## 🔒 Validaciones del XSD

El esquema XSD implementa las siguientes validaciones estrictas:

### 1. Patrones de Identificadores (Regex)

| Elemento | Patrón | Ejemplo Válido | Ejemplo Inválido |
|----------|--------|----------------|------------------|
| ID Empleado | `EMP\d{3}` | EMP001, EMP099 | E001, EMP1 |
| ID Servidor | `SRV-[A-Z]+-\d{2}` | SRV-PROD-01 | SERVER-1 |
| ID Dispositivo Red | `[A-Z]{2}-[A-Z]+-\d{2}` | SW-CORE-01 | SWITCH-01 |

### 2. Enumeraciones

**Departamentos válidos:**
- Sistemas
- Desarrollo
- Data
- RRHH
- Direccion
- Comercial
- Seguridad
- Cloud
- Diseño
- Admin
- Legal

**Monedas válidas:**
- EUR (Euro)
- USD (Dólar estadounidense)
- GBP (Libra esterlina)

### 3. Restricciones Numéricas

| Campo | Restricción | Descripción |
|-------|-------------|-------------|
| Precio | 0 ≤ valor ≤ 999999.99 | Positivo, máx. 2 decimales |
| Cantidad | 1 ≤ valor ≤ 9999 | Entero positivo |
| Nombre | 3-100 caracteres | Solo letras y espacios |

### 4. Cardinalidades

- **Obligatorios:** Nombre, Departamento, Cargo, EquipamientoAsignado
- **Opcionales:** Telefonia, Perifericos, GPU
- **Múltiples:** Empleado (1-∞), Servidor (1-∞)

### 5. Restricciones de Unicidad

- Los IDs de empleados deben ser únicos
- Los IDs de servidores deben ser únicos

---

## ✅ Validación del XML

### Métodos de Validación

#### Opción 1: Visual Studio Code (Recomendado)

1. **Instalar extensión:** Red Hat XML Tools
2. **Abrir archivo:** `Gestion.xml`
3. **Verificar:** Los errores aparecen automáticamente en la pestaña "Problemas"

**Resultado esperado:**
- ✅ `Gestion.xml` → Sin errores
- ❌ `Gestion_invalido.xml` → 20+ errores detectados

#### Opción 2: Validadores Online

**Herramientas recomendadas:**
- [FreeFormatter.com XML Validator](https://www.freeformatter.com/xml-validator-xsd.html)
- [XMLValidation.com](https://www.xmlvalidation.com/)
- [Code Beautify XML Validator](https://codebeautify.org/xmlvalidator)

**Pasos:**
1. Copiar contenido de `Gestion.xml`
2. Copiar contenido de `Gestion.xsd`
3. Pegar en el validador online
4. Ejecutar validación

#### Opción 3: Línea de Comandos (xmllint)

```bash
# Instalar xmllint (si no está instalado)
# Windows: Descargar libxml2
# Linux: sudo apt-get install libxml2-utils
# macOS: brew install libxml2

# Validar XML contra XSD
xmllint --noout --schema Gestion.xsd Gestion.xml

# Resultado esperado:
# Gestion.xml validates
```

---

## 🧪 Pruebas de Validación

### Archivo Válido: `Gestion.xml`

**Características:**
- ✅ Todos los IDs siguen los patrones correctos
- ✅ Departamentos dentro de la enumeración
- ✅ Precios positivos con máximo 2 decimales
- ✅ Monedas válidas (EUR)
- ✅ Cantidades dentro del rango permitido

**Resultado:** **VALIDACIÓN EXITOSA** ✅

### Archivo Inválido: `Gestion_invalido.xml`

**Errores intencionales incluidos:**

1. ❌ ID empleado incorrecto: `E001` (debe ser `EMP001`)
2. ❌ Departamento inválido: `Marketing` (no está en enumeración)
3. ❌ Precio negativo: `-1500.00` (viola minInclusive)
4. ❌ Moneda inválida: `MXN` (debe ser EUR, USD o GBP)
5. ❌ Nombre muy corto: `Al` (mínimo 3 caracteres)
6. ❌ Precio con 3 decimales: `999.999` (máximo 2)
7. ❌ Cantidad cero: `0` (mínimo 1)
8. ❌ ID switch incorrecto: `SWITCH-01` (debe ser `SW-CORE-01`)
9. ❌ ID router incorrecto: `ROUTER1` (debe ser `RT-EDGE-01`)
10. ❌ ID servidor incorrecto: `SERVER-1` (debe ser `SRV-PROD-01`)
11. ❌ Cantidad excesiva: `10000` (máximo 9999)

**Resultado:** **VALIDACIÓN FALLIDA** ❌ (20+ errores detectados)

---

## 🔗 Integración con el Proyecto Web

El XML está integrado con el sitio web de TechNova Solutions de las siguientes formas:

### 1. Página de Documentación

Se ha creado una página dedicada (`documentacion.html`) que:
- Explica el propósito del sistema XML
- Describe la estructura de datos
- Proporciona enlaces de descarga a los archivos XML/XSD
- Muestra ejemplos de uso

### 2. Enlaces en el Sitio

- **Footer:** Enlace a "Documentación Técnica"
- **Navegación:** Acceso desde todas las páginas
- **Descargas:** Archivos XML/XSD disponibles para descarga

### 3. Coherencia de Datos

Los datos del XML corresponden exactamente con:
- **Página Equipo:** Empleados listados en `equipo.html`
- **Página Infraestructura:** Equipamiento mostrado en `infraestructura.html`
- **Precios y especificaciones:** Coinciden con la información web

---

## 📈 Casos de Uso

### Exportación de Inventario
```
Sistema Interno → Genera XML → Gestion.xml
```
El XML puede ser generado automáticamente desde una base de datos para documentar el estado actual del inventario.

### Importación a Otros Sistemas
```
Gestion.xml → Parser XML → Sistema Externo
```
Otros sistemas pueden leer el XML para importar datos de equipamiento.

### Auditoría y Reporting
```
Gestion.xml → Transformación XSLT → Informe PDF/HTML
```
El XML puede ser transformado en informes visuales para auditorías.

### Backup y Recuperación
```
Backup Diario → Gestion.xml → Almacenamiento Seguro
```
El XML sirve como backup estructurado de la configuración.

---

## 📚 Tecnologías Utilizadas

- **XML 1.0** - Lenguaje de marcado extensible
- **XSD 1.0** - XML Schema Definition para validación
- **UTF-8** - Codificación de caracteres
- **Namespaces XML** - Para validación con XSD

---

## 🎓 Cumplimiento de Requisitos del Módulo

### ✅ Requisitos Cumplidos

| Requisito | Estado | Evidencia |
|-----------|--------|-----------|
| XML real del proyecto | ✅ | `Gestion.xml` con datos coherentes |
| XSD con validación | ✅ | `Gestion.xsd` con 10+ tipos de validaciones |
| Estructura clara | ✅ | Jerarquía lógica Usuarios/Infraestructura |
| Datos realistas | ✅ | Equipamiento real de consultora IT |
| Identificadores coherentes | ✅ | IDs únicos con patrones validados |
| Tipos de datos | ✅ | string, integer, decimal con restricciones |
| Restricciones | ✅ | Patrones, rangos, enumeraciones |
| Cardinalidades | ✅ | minOccurs/maxOccurs definidos |
| Validación demostrada | ✅ | XML válido + XML inválido |
| Integración con proyecto | ✅ | Página documentación + enlaces web |

---

## 👨‍💻 Autor

**Javier Ordóñez Muñoz**  
1º Administración de Sistemas Informáticos en Red (ASIR)  
Proyecto Intermodular 2026

---

## 📄 Licencia

Este proyecto es parte del trabajo académico del módulo de Lenguajes de Marcas.  
© 2026 TechNova Solutions S.L. - Proyecto Educativo