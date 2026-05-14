# 🔍 Guía de Validación XML/XSD - TechNova Solutions

## 📋 Índice

1. [Introducción](#introducción)
2. [Método 1: Visual Studio Code](#método-1-visual-studio-code-recomendado)
3. [Método 2: Validadores Online](#método-2-validadores-online)
4. [Método 3: Línea de Comandos](#método-3-línea-de-comandos-xmllint)
5. [Interpretación de Errores](#interpretación-de-errores)
6. [Casos de Prueba](#casos-de-prueba)

---

## Introducción

Esta guía proporciona instrucciones detalladas para validar los archivos XML contra el esquema XSD del proyecto TechNova Solutions.

**Archivos a validar:**
- ✅ `xml/Gestion.xml` - Debe validar correctamente
- ❌ `xml/Gestion_invalido.xml` - Debe fallar con múltiples errores

---

## Método 1: Visual Studio Code (Recomendado)

### Paso 1: Instalar la Extensión XML

1. Abrir Visual Studio Code
2. Ir a la pestaña de **Extensiones** (Ctrl+Shift+X)
3. Buscar: **"XML" by Red Hat**
4. Hacer clic en **Instalar**

![Extensión XML](https://raw.githubusercontent.com/redhat-developer/vscode-xml/main/images/vscode-xml-icon.png)

**Características de la extensión:**
- Validación automática contra XSD
- Autocompletado de elementos
- Resaltado de sintaxis
- Detección de errores en tiempo real

### Paso 2: Configurar la Validación

La extensión detecta automáticamente la referencia al XSD en el XML:

```xml
<ConsultoriaTecnica 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:noNamespaceSchemaLocation="Gestion.xsd"
    nombre="TechNova Solutions S.L.">
```

**No se requiere configuración adicional** si los archivos están en la misma carpeta.

### Paso 3: Validar el XML

1. Abrir el archivo `xml/Gestion.xml` en VS Code
2. Observar la pestaña **"PROBLEMAS"** (View → Problems o Ctrl+Shift+M)
3. Si el XML es válido: **No aparecerán errores** ✅
4. Si el XML es inválido: **Aparecerán errores detallados** ❌

### Paso 4: Probar con XML Inválido

1. Abrir el archivo `xml/Gestion_invalido.xml`
2. Observar la pestaña **"PROBLEMAS"**
3. Deberías ver **20+ errores** listados

**Ejemplo de errores mostrados:**
```
[xml Error] Line 25: cvc-pattern-valid: Value 'E001' is not facet-valid 
with respect to pattern 'EMP\d{3}' for type 'tipoIDEmpleado'.

[xml Error] Line 28: Value 'Marketing' is not in the enumeration list.

[xml Error] Line 39: cvc-minInclusive-valid: Value '-1500.00' is not 
facet-valid with respect to minInclusive '0.0' for type 'tipoValorPrecio'.
```

### Paso 5: Capturar Evidencia

**Para el informe del proyecto:**

1. **Validación Correcta:**
   - Abrir `Gestion.xml`
   - Captura de pantalla mostrando **0 problemas**
   - Guardar como `xml/validacion/validacion_correcta.png`

2. **Validación con Errores:**
   - Abrir `Gestion_invalido.xml`
   - Captura de pantalla mostrando **lista de errores**
   - Guardar como `xml/validacion/validacion_error.png`

---

## Método 2: Validadores Online

### Opción A: FreeFormatter.com

**URL:** https://www.freeformatter.com/xml-validator-xsd.html

**Pasos:**

1. **Ir al sitio web** de FreeFormatter
2. **Pegar el contenido del XSD:**
   - Copiar todo el contenido de `Gestion.xsd`
   - Pegarlo en el campo "XML Schema (XSD)"
3. **Pegar el contenido del XML:**
   - Copiar todo el contenido de `Gestion.xml`
   - Pegarlo en el campo "XML Document"
4. **Hacer clic en "Validate XML"**
5. **Resultado esperado:**
   - ✅ "The XML document is valid"
   - ✅ Mensaje en verde confirmando validación

**Para XML inválido:**
- Repetir con `Gestion_invalido.xml`
- ❌ Verás lista de errores en rojo

### Opción B: XMLValidation.com

**URL:** https://www.xmlvalidation.com/

**Pasos:**

1. Ir a XMLValidation.com
2. En la pestaña **"Validate by XSD"**
3. Pegar el XML en el área de texto superior
4. Pegar el XSD en el área de texto inferior
5. Hacer clic en **"Validate"**
6. Ver resultados

### Opción C: Code Beautify

**URL:** https://codebeautify.org/xmlvalidator

**Pasos:**

1. Ir a Code Beautify XML Validator
2. Pegar el contenido XML
3. Seleccionar **"Validate with XSD"**
4. Pegar el contenido XSD
5. Hacer clic en **"Validate XML"**

**Ventajas de validadores online:**
- ✅ No requieren instalación
- ✅ Accesibles desde cualquier dispositivo
- ✅ Resultados inmediatos
- ✅ Útiles para demostraciones

**Desventajas:**
- ❌ Requieren conexión a Internet
- ❌ Menos detalle en mensajes de error
- ❌ No integrados en el flujo de trabajo

---

## Método 3: Línea de Comandos (xmllint)

### Instalación de xmllint

#### Windows

**Opción 1: Descargar libxml2**
1. Ir a http://xmlsoft.org/downloads.html
2. Descargar binarios para Windows
3. Extraer y añadir al PATH

**Opción 2: Usar WSL (Windows Subsystem for Linux)**
```bash
wsl --install
sudo apt-get update
sudo apt-get install libxml2-utils
```

#### Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install libxml2-utils
```

#### macOS
```bash
brew install libxml2
```

### Uso de xmllint

**Sintaxis básica:**
```bash
xmllint --noout --schema <archivo.xsd> <archivo.xml>
```

**Validar Gestion.xml:**
```bash
cd Proyecto_Javier_Ordóñez_Muñoz/xml
xmllint --noout --schema Gestion.xsd Gestion.xml
```

**Resultado esperado (XML válido):**
```
Gestion.xml validates
```

**Validar Gestion_invalido.xml:**
```bash
xmllint --noout --schema Gestion.xsd Gestion_invalido.xml
```

**Resultado esperado (XML inválido):**
```
Gestion_invalido.xml:25: element Empleado: Schemas validity error : 
Element 'Empleado', attribute 'id': 'E001' is not a valid value of 
the atomic type 'tipoIDEmpleado'.

Gestion_invalido.xml:28: element Departamento: Schemas validity error : 
Element 'Departamento': [facet 'enumeration'] The value 'Marketing' is 
not an element of the set {'Sistemas', 'Desarrollo', 'Data', ...}.

... (más errores)

Gestion_invalido.xml fails to validate
```

### Guardar Resultados en Archivo

**Para documentación:**
```bash
# Validación correcta
xmllint --noout --schema Gestion.xsd Gestion.xml 2>&1 | tee validacion_correcta.log

# Validación con errores
xmllint --noout --schema Gestion.xsd Gestion_invalido.xml 2>&1 | tee validacion_error.log
```

---

## Interpretación de Errores

### Tipos de Errores Comunes

#### 1. Error de Patrón (Pattern)
```
cvc-pattern-valid: Value 'E001' is not facet-valid with respect to 
pattern 'EMP\d{3}' for type 'tipoIDEmpleado'
```

**Significado:** El valor no cumple con el patrón regex definido  
**Solución:** Usar formato correcto (ej: EMP001, EMP002, etc.)

#### 2. Error de Enumeración
```
Value 'Marketing' is not in the enumeration list.
```

**Significado:** El valor no está en la lista de valores permitidos  
**Solución:** Usar uno de los valores válidos (Sistemas, Desarrollo, Data, etc.)

#### 3. Error de Rango Numérico
```
cvc-minInclusive-valid: Value '-1500.00' is not facet-valid with 
respect to minInclusive '0.0'
```

**Significado:** El número está fuera del rango permitido  
**Solución:** Usar valor dentro del rango (≥ 0 para precios)

#### 4. Error de Longitud
```
cvc-minLength-valid: Value 'Al' with length = '2' is not facet-valid 
with respect to minLength '3'
```

**Significado:** El texto es demasiado corto  
**Solución:** Usar al menos 3 caracteres

#### 5. Error de Decimales
```
cvc-fractionDigits-valid: Value '999.999' has 3 fraction digits, 
but the number of fraction digits has been limited to 2
```

**Significado:** Demasiados decimales  
**Solución:** Usar máximo 2 decimales (ej: 999.99)

---

## Casos de Prueba

### ✅ Caso 1: Validación Exitosa

**Archivo:** `Gestion.xml`

**Elementos a verificar:**
- [x] Todos los IDs siguen patrones correctos
- [x] Departamentos válidos
- [x] Precios positivos con 2 decimales
- [x] Monedas válidas (EUR)
- [x] Cantidades en rango 1-9999
- [x] Nombres con 3-100 caracteres

**Resultado esperado:** ✅ **VALIDACIÓN EXITOSA**

### ❌ Caso 2: Validación con Errores

**Archivo:** `Gestion_invalido.xml`

**Errores incluidos:**

| Línea | Error | Tipo |
|-------|-------|------|
| 25 | ID 'E001' incorrecto | Pattern |
| 28 | Departamento 'Marketing' inválido | Enumeration |
| 39 | Precio negativo -1500.00 | MinInclusive |
| 45 | Moneda 'MXN' inválida | Enumeration |
| 51 | Nombre 'Al' muy corto | MinLength |
| 63 | Precio 999.999 (3 decimales) | FractionDigits |
| 72 | Cantidad 0 | MinInclusive |
| 78 | ID 'SWITCH-01' incorrecto | Pattern |
| 86 | ID 'ROUTER1' incorrecto | Pattern |
| 100 | ID 'SERVER-1' incorrecto | Pattern |
| 117 | Cantidad 10000 excede máximo | MaxInclusive |

**Resultado esperado:** ❌ **20+ ERRORES DETECTADOS**

---

## 📸 Evidencias para el Proyecto

### Checklist de Capturas Requeridas

Para cumplir con los requisitos del módulo, debes incluir:

- [ ] **Captura 1:** VS Code mostrando `Gestion.xml` sin errores
- [ ] **Captura 2:** VS Code mostrando `Gestion_invalido.xml` con errores
- [ ] **Captura 3:** Validador online con resultado exitoso
- [ ] **Captura 4:** Validador online con resultado fallido
- [ ] **Captura 5:** (Opcional) Salida de xmllint en terminal

### Ubicación de las Capturas

Guardar en: `xml/validacion/`

**Nombres sugeridos:**
- `validacion_correcta_vscode.png`
- `validacion_error_vscode.png`
- `validacion_correcta_online.png`
- `validacion_error_online.png`
- `validacion_terminal.png`

---

## 🎯 Conclusión

Has completado la validación cuando:

1. ✅ `Gestion.xml` valida correctamente sin errores
2. ❌ `Gestion_invalido.xml` muestra múltiples errores
3. 📸 Tienes capturas de pantalla de ambos casos
4. 📝 Has documentado el proceso

**Esto demuestra que:**
- El XSD funciona correctamente
- Las validaciones están implementadas
- El sistema detecta errores efectivamente
- El proyecto cumple con los requisitos del módulo

---

## 📚 Referencias

- [W3C XML Schema Specification](https://www.w3.org/TR/xmlschema-0/)
- [Red Hat XML Extension Documentation](https://github.com/redhat-developer/vscode-xml)
- [xmllint Manual](http://xmlsoft.org/xmllint.html)
- [XML Validation Tutorial](https://www.w3schools.com/xml/xml_validator.asp)

---

**Autor:** Javier Ordóñez Muñoz  
**Proyecto:** TechNova Solutions - Sistema de Gestión XML/XSD  
**Módulo:** Lenguajes de Marcas - 1º ASIR