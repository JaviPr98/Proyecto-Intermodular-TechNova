# 🖥️ Módulo 1: Fundamentos de Hardware
## Configuración e Inventario de Hardware - Proyecto TechNova

En este módulo he diseñado e implementado la arquitectura física y los cimientos de hardware sobre los que se sostiene todo el entorno tecnológico de TechNova Solutions S.L. No planteo el hardware como un simple gasto de equipo, sino como la base física necesaria para soportar con solvencia las cargas de trabajo de la consultora (IA, Big Data y Ciberseguridad), garantizando estabilidad, redundancia y eficiencia energética.

---

## 🎯 Objetivos del diseño
He planificado la infraestructura basándome en tres criterios técnicos:
* **Eliminación de cuellos de botella:** He seleccionado componentes (CPU, RAM y IOPS de almacenamiento) dimensionados para que el despliegue de servidores, bases de datos y tráfico de red funcione de manera fluida.
* **Continuidad de negocio:** He priorizado hardware de grado industrial (fuentes Platinum, memoria ECC y tolerancia a fallos en discos RAID 6) para maximizar el tiempo de actividad y reducir averías físicas.
* **Optimización por perfil laboral:** He ajustado las especificaciones de los equipos según las necesidades reales de cada departamento, evitando gastos innecesarios en hardware sobredimensionado.

---

## 🏗️ Implementación Física y Segmentación de Equipos
He coordinado la potencia de los equipos con la estructura lógica de las VLANs de la empresa para asegurar el rendimiento en cada área:

### 1. Desarrollo, IA y Ciberseguridad (VLAN 30) 🚀
* **Equipos:** Workstations de sobremesa **HP Z8 G5 Tower**.
* **Componentes clave:** Procesadores **Intel Xeon** y aceleradoras gráficas **NVIDIA RTX 6000 Ada (48GB VRAM)**.
* **Justificación:** Son estaciones dedicadas al cálculo masivo. He montado **Memoria DDR5 ECC** (Error Correcting Code) para prevenir la corrupción de datos y congelamientos del sistema durante procesos largos de entrenamiento de modelos de IA o auditorías de seguridad.

### 2. Administración y Sistemas (VLAN 20) 🛠️
* **Equipos:** Mobile Workstations **Lenovo ThinkPad P16 G2**.
* **Componentes clave:** 64GB de memoria RAM y **puerto RJ45 físico integrado**.
* **Justificación:** Permite al equipo de sistemas movilidad hacia el CPD conservando la capacidad de levantar de manera local múltiples máquinas virtuales en entornos de prueba antes de pasarlas a producción.

### 3. Dirección y Operativa Comercial (VLAN 10 y 40) 💼
* **Equipos:** **Apple MacBook Air M3** y **Surface Laptop 5**.
* **Justificación:** Equipos centrados en la portabilidad extrema, alta autonomía de batería para reuniones y seguridad biométrica integrada por hardware para proteger los accesos de gestión.

---

## 🛠️ Almacenamiento, Eficiencia (TCO) y Mantenimiento
* **Estrategia de Discos (Storage Tiers):** En el servidor principal (**SRV-PROD-01**) combino un almacenamiento de alto rendimiento en estado sólido **NVMe** para los datos de acceso frecuente (*Hot Data*), junto con un arreglo **RAID 6 de 40TB** para copias de seguridad. El RAID 6 garantiza que puedan fallar hasta dos discos de manera simultánea sin pérdida de información.
* **Cálculo de TCO y Eficiencia:** He optimizado el Coste Total de Propiedad a 5 años seleccionando fuentes de alimentación con certificación **80 Plus Platinum**, lo que reduce la disipación de calor en el rack y recorta el consumo eléctrico continuo.
* **Plan de Mantenimiento Preventivo:** He establecido políticas de monitorización **S.M.A.R.T.** para anticipar fallos en los discos, rutinas de limpieza física de la electrónica y una guía de códigos de pitidos de la placa (*Beep Codes*) para el diagnóstico rápido de fallos en el POST.

---

## 🔗 Relación con otros módulos
El hardware seleccionado dimensiona y da soporte directo al resto de asignaturas del proyecto:
* **Redes (M3):** He implementado cableado estructurado **Cat.6a** e interfaces Gigabit en electrónica **Cisco Catalyst** para soportar el tráfico inter-VLAN y la convergencia de OSPF a alta velocidad.
* **Sistemas Operativos (M2):** El número de núcleos de CPU y la asignación de memoria RAM están medidos para ejecutar los hipervisores y las máquinas virtuales (Ubuntu/Windows Server) de los servidores principales sin degradación de rendimiento.
* **Bases de Datos (M4):** La controladora de discos y las tasas de lectura/escritura están dimensionadas para cubrir los **IOPS** que exige el motor PostgreSQL durante consultas e inserciones SQL masivas.

---

## 📂 Archivos del proyecto
| Archivo | Qué es |
| :--- | :--- |
| 📄 **[INTERMODULAR HARDWARE.pdf](./INTERMODULAR%20HARDWARE.pdf)** | Memoria técnica completa (Análisis de componentes, presupuestos de TCO y plan de mantenimiento preventivo). |

---

> **Resumen:** He diseñado una infraestructura física robusta, eficiente y adaptada a las necesidades reales de producción de la consultora, asegurando que el hardware soporte con total estabilidad la capa lógica del software.
