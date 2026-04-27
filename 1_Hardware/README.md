# 🖥️ Módulo 1: Fundamentos de Hardware
# 🖥️ Arquitectura de Infraestructura Física y Estrategia de Hardware
### **Módulo Central: TechNova Solutions S.L.**

Este repositorio documenta los cimientos físicos sobre los que se construye todo el ecosistema tecnológico de la consultora. En este proyecto, el hardware no se considera un gasto operativo, sino el **motor de producción** de la compañía. Se ha diseñado una infraestructura capaz de soportar cargas críticas de Inteligencia Artificial, Big Data y Ciberseguridad, priorizando la alta disponibilidad, la redundancia y la eficiencia energética.

---

## 🎯 Introducción y Visión de Negocio
TechNova Solutions nace con una premisa clara: **la estabilidad lógica depende de la robustez física**. La elección de cada componente responde a un análisis exhaustivo de necesidades reales de una consultoría moderna:

* **Propósito:** Garantizar que el despliegue de redes, bases de datos y sistemas operativos cuente con los recursos de cómputo (CPU), memoria (RAM) y almacenamiento (IOPS) necesarios para operar sin cuellos de botella.
* **Lógica de Inversión (CAPEX vs. OPEX):** Se ha optado por una inversión inicial estratégica en hardware de grado industrial (Fuentes Platinum, Memoria ECC, RAID 6) para maximizar el ciclo de vida de los equipos y minimizar los costes de mantenimiento y pérdidas por paradas no programadas.
* **Utilidad Profesional:** Cada perfil de la empresa cuenta con hardware optimizado para su flujo de trabajo, eliminando el infra-dimensionamiento y asegurando la escalabilidad a largo plazo.

---

## 🏗️ Implementación Técnica y Segmentación por VLAN
La infraestructura física está alineada con la segmentación lógica de la red, asegurando que el hardware soporte las políticas de seguridad y rendimiento de cada departamento:

### 1. Zona de Alto Rendimiento (IA, Ciberseguridad y Big Data - VLAN 30)
* **Equipamiento:** Workstations **HP Z8 G5 Tower**.
* **Configuración Clave:** Procesadores **Intel Xeon** y GPUs **NVIDIA RTX 6000 Ada (48GB VRAM)**.
* **Lógica de Negocio:** Estas máquinas actúan como laboratorios de cálculo masivo. La inclusión de **Memoria DDR5 ECC LRDIMM** es innegociable para prevenir la corrupción de datos en procesos de entrenamiento de IA y auditorías de seguridad complejas.

### 2. Infraestructura de Administración y Sistemas (VLAN 20)
* **Equipamiento:** **Lenovo ThinkPad P16 G2** (Mobile Workstations).
* **Configuración Clave:** 64GB de RAM y puerto **RJ45 físico dedicado**.
* **Lógica de Negocio:** El equipo de sistemas requiere movilidad para intervenir en el CPD (Data Center), pero con potencia suficiente para virtualizar entornos de prueba completos antes de su paso a producción.

### 3. Gestión Directiva y Operativa (VLAN 10 y 40)
* **Equipamiento:** **Apple MacBook Air M3** y **Surface Laptop 5**.
* **Lógica de Negocio:** Enfoque en autonomía extrema (arquitectura ARM), portabilidad y seguridad biométrica por hardware para perfiles que gestionan la estrategia corporativa y la relación con clientes.

---

## 🚀 Escalabilidad, Almacenamiento y TCO
La arquitectura de TechNova ha sido diseñada bajo el concepto de **"Modularidad Evolutiva"**:

1.  **Estrategia de Almacenamiento (Tiers):** Uso de un sistema de niveles en el servidor **SRV-PROD-01**. El nivel de alto rendimiento (Hot Data) opera sobre **NVMe**, mientras que el histórico y backups descansan en una matriz **RAID 6 de 40TB**, permitiendo el fallo simultáneo de dos discos sin pérdida de datos.
2.  **Gestión Financiera (TCO):** El análisis del "Costo Total de Propiedad" justifica la compra de equipos con certificación **80 Plus Platinum**, reduciendo el calor residual y el gasto eléctrico, lo que optimiza el beneficio neto de la consultora a 5 años.
3.  **Mantenimiento Profesional:** Se han definido protocolos de mantenimiento preventivo (limpieza atmosférica, monitorización S.M.A.R.T.) y reactivo (diagnóstico por Beep Codes) para garantizar un SLA (Acuerdo de Nivel de Servicio) del 99.9%.

---

## 🧩 Integración Intermodular (Sinergia Técnica)
El hardware es el habilitador del resto de las disciplinas de ASIR en este proyecto:

* **Redes (M3):** Define la Capa 1. El uso de cableado **Cat.6a U/FTP LSZH** y electrónica **Cisco Catalyst** garantiza que el protocolo OSPF y las VLANs operen a 10Gbps reales.
* **Sistemas Operativos (M2):** Proporciona los núcleos de CPU y la RAM necesaria para que el controlador de dominio y los clientes virtuales funcionen sin latencia.
* **Bases de Datos (M4):** El diseño de la controladora de discos asegura los **IOPS** necesarios para que las consultas a PostgreSQL sean instantáneas.
* **Lenguajes de Marcas (M5):** El inventario físico detallado aquí es la "fuente de verdad" para los archivos de gestión **XML/XSD**, permitiendo una auditoría digital y automatizada de los activos IT.

---

## 📂 Contenido del Módulo
| Archivo | Descripción |
| :--- | :--- |
| 📄 **[Informe_Hardware_TechNova.pdf](./INTERMODULAR_HARDWARE.pdf)** | 23 páginas de auditoría técnica: análisis de componentes, presupuestos TCO, gestión de residuos y plan de mantenimiento. |

---
> **Conclusión Profesional:** Este módulo demuestra la capacidad de diseñar una infraestructura física de nivel empresarial, entendiendo que la elección de un componente influye directamente en la seguridad, la rentabilidad y la operatividad global de la compañía.
