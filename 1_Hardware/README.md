# 🖥️ Módulo 1: Fundamentos de Hardware

### Arquitectura de Infraestructura Física y Estrategia de Hardware 🏗️
**Módulo Central del Proyecto TechNova Solutions S.L.**

En este apartado documento los cimientos físicos sobre los que he montado todo el ecosistema tecnológico de la consultora. En este proyecto, no veo el hardware como un simple gasto, sino como la **base física** que permite que todo lo demás funcione. He diseñado una infraestructura pensada para aguantar cargas de trabajo reales (IA, Big Data y Ciberseguridad), priorizando que los sistemas sean estables, redundantes y eficientes.

---

## 🎯 ¿Por qué este diseño de Hardware?

Mi punto de partida para TechNova ha sido claro: **si el hierro falla, el software no sirve de nada**. La elección de cada componente responde a un análisis de lo que necesita una consultoría técnica hoy en día:

* **Evitar cuellos de botella:** He seleccionado CPUs, RAM y almacenamiento (IOPS) con margen suficiente para que el despliegue de redes, bases de datos y sistemas operativos sea fluido.
* **Inversión Inteligente:** He priorizado componentes de grado industrial, como fuentes con certificación Platinum, memoria ECC y configuraciones RAID 6. El objetivo es que los equipos duren más tiempo y evitar paradas por averías que costarían dinero a la empresa.
* **Optimización por puesto:** No todos los empleados necesitan lo mismo. He ajustado el hardware según el flujo de trabajo de cada perfil para no gastar de más donde no hace falta.

---

## 🏗️ Implementación Técnica y Segmentación

He alineado la potencia física con la estructura lógica de la red (VLANs), asegurando que cada departamento tenga el rendimiento que necesita:

### 1. Zona de Alto Rendimiento (IA y Ciberseguridad - VLAN 30) 🚀
* **Equipos:** Workstations **HP Z8 G5 Tower**.
* **Clave técnica:** Procesadores **Intel Xeon** y gráficas **NVIDIA RTX 6000 Ada (48GB VRAM)**.
* **Justificación:** Son máquinas para cálculo masivo. He incluido **Memoria DDR5 ECC** porque es fundamental para evitar la corrupción de datos en procesos largos de entrenamiento de IA o auditorías de seguridad.

### 2. Administración y Sistemas (VLAN 20) 🛠️
* **Equipos:** **Lenovo ThinkPad P16 G2** (Mobile Workstations).
* **Clave técnica:** 64GB de RAM y **puerto RJ45 físico dedicado**.
* **Justificación:** El equipo de sistemas necesita moverse al CPD pero con potencia de sobra para levantar entornos de prueba en virtualización antes de pasarlos a producción.

### 3. Dirección y Operativa (VLAN 10 y 40) 💼
* **Equipos:** **Apple MacBook Air M3** y **Surface Laptop 5**.
* **Justificación:** Aquí busco autonomía y portabilidad extrema para perfiles que gestionan la estrategia y clientes, usando seguridad biométrica por hardware.

---

## 🚀 Almacenamiento, TCO y Mantenimiento

He diseñado la arquitectura bajo el concepto de **modularidad**, pensando en que la empresa pueda crecer:

1. **Estrategia de Discos (Tiers):** En el servidor principal (**SRV-PROD-01**) combino discos **NVMe** para los datos de acceso rápido (Hot Data) y un **RAID 6 de 40TB** para backups. El RAID 6 me permite que fallen hasta dos discos a la vez sin perder ni un bit.
2. **Cálculo del TCO (Costo Total):** He analizado el coste a largo plazo. Usar fuentes **80 Plus Platinum** reduce el calor y el gasto eléctrico, algo que se nota mucho en la factura de una empresa a 5 años vista.
3. **Mantenimiento Proactivo:** He definido protocolos de limpieza, monitorización S.M.A.R.T. de los discos y diagnóstico por códigos de pitidos (Beep Codes) para asegurar que el sistema esté levantado el 99.9% del tiempo.

---

## 🧩 Integración Intermodular (Sinergia con ASIR)

El hardware es lo que permite que el resto de mis asignaturas de ASIR "cobren vida":

* **Redes (M3):** He elegido cableado **Cat.6a** y electrónica **Cisco Catalyst** para que el protocolo OSPF y las VLANs vuelen a 10Gbps.
* **Sistemas Operativos (M2):** He dimensionado los núcleos y la RAM para que las máquinas virtuales del controlador de dominio y los clientes no tengan lag.
* **Bases de Datos (M4):** La configuración de la controladora de discos está pensada para dar los **IOPS** que pide PostgreSQL en consultas pesadas.
* **Lenguajes de Marcas (M5):** Todo el inventario físico que ves aquí es lo que uso para generar los archivos **XML/XSD** de gestión automatizada.

---

## 📂 Contenido del Módulo

| Archivo | Descripción |
| :--- | :--- |
| 📄 [**INTERMODULAR HARDWARE.pdf**](./INTERMODULAR%20HARDWARE.pdf) | Memoria técnica de 23 páginas con el análisis de componentes, presupuestos TCO y plan de mantenimiento. |

---
> **Conclusión:** Como futuro administrador, tengo claro que una buena infraestructura empieza por saber elegir el hierro. Este módulo demuestra que sé diseñar una base física sólida, rentable y preparada para el mundo laboral.
