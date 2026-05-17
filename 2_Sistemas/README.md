# 🖥️ Módulo 2: Implantación de Sistemas Operativos
## Despliegue de Infraestructura y Servicios Híbridos - Proyecto TechNova

En este apartado detallo cómo he desplegado y configurado los servidores y equipos cliente de la empresa. He usado una arquitectura híbrida combinando Windows y Linux para optimizar los recursos, garantizando la seguridad, la administración centralizada y la alta disponibilidad de los datos corporativos.

---

## 🎯 Objetivos del diseño
He configurado los sistemas pensando en tres pilares fundamentales:
* **Control centralizado:** Administrar todos los usuarios, permisos y políticas de los equipos desde un único punto (Directorio Activo).
* **Seguridad y aislamiento:** Proteger la información confidencial de cada departamento mediante permisos NTFS estrictos, cifrado de discos y cuotas de almacenamiento.
* **Automatización:** Reducir al máximo los fallos humanos automatizando procesos críticos como las altas masivas de usuarios y las copias de seguridad nocturnas.

---

## 🛠️ Configuración Técnica

### 1. Arquitectura Híbrida y Despliegue
He repartido los roles críticos en las máquinas más eficientes para cada tarea:
* **Windows Server 2022 (TN-SRV-USUARIOS):** Servidor principal con entorno gráfico (GUI) dedicado en exclusiva a la gestión de identidades (Active Directory) y resolución de nombres (DNS).
* **Ubuntu Server 24.04 LTS (TN-SRV-DATA):** Servidor de aplicaciones sin entorno gráfico para ahorrar RAM/CPU, alojando la Intranet en **Apache2** y el motor de base de datos **PostgreSQL**.
* **Windows 11 Pro (TN-CLI-ADMIN):** Estación de administración preparada como imagen maestra con la herramienta **Sysprep** (OOBE/Generalizar) para evitar conflictos de SID al clonar.

### 2. Gestión de Identidades (Active Directory)
Todo el personal está bajo el dominio `technova.local`:
* **Jerarquía Organizativa:** Usuarios divididos en Unidades Organizativas (OUs) por departamentos (Dirección, Sistemas, Desarrollo, Soporte_Negocio).
* **Automatización con PowerShell:** He programado un script que lee un archivo XML corporativo, crea las OUs, genera los usuarios automáticamente (formato *nombre.apellido*) y les asigna contraseñas iniciales seguras.
* **Políticas de Seguridad (GPOs):** Despliegue de directivas automatizadas para forzar el fondo de pantalla corporativo, bloquear el acceso al Panel de Control y denegar completamente la conexión de pendrives USB.

### 3. Almacenamiento Compartido y Seguridad NTFS
He montado un servidor de archivos centralizado y fuertemente securizado:
* **Permisos RBAC y NTFS:** Carpetas departamentales compartidas en la red donde se ha roto la herencia nativa para asignar permisos explícitos usando la herramienta `icacls`. Carpetas como "Finanzas" y "Personal" operan como recursos ocultos (`$`).
* **Cuotas de Disco (Hard Quota):** Límite estricto de 10 GB por usuario para proteger el almacenamiento físico del servidor contra saturaciones.
* **Cifrado BitLocker:** Unidad de sistema del puesto administrativo cifrada, exportando y guardando automáticamente la clave de recuperación de forma segura en una unidad de red del servidor.

### 4. Continuidad de Negocio (Backups Centralizados)
Los datos críticos se respaldan sin intervención humana:
* **Directorio Activo:** Tarea desatendida nocturna en Windows que ejecuta `ntdsutil` (IFM) para copiar la base de datos de identidades al repositorio seguro.
* **Base de Datos (Cron + SMB):** Script en Bash programado en Ubuntu Server que extrae la base de datos PostgreSQL (`pg_dump`) y la envía automáticamente al volumen de red del Windows Server usando autenticación `smbclient`.

---

## 🧩 Relación con otros módulos
La infraestructura de sistemas es el núcleo donde convergen el resto de desarrollos:
* **Redes (M3):** Los servidores dependen de las VLANs, la configuración IP estática y el enrutamiento configurado en la electrónica de red para comunicarse entre sí.
* **Bases de Datos (M4):** Instalación, configuración y aseguramiento del motor relacional PostgreSQL, importando esquemas e implantando roles de seguridad.
* **Lenguajes de Marcas (M5):** Transferencia segura por consola (protocolo SCP) de los documentos HTML, hojas de estilo CSS y validaciones XML al directorio raíz público de Apache2.

---

## 📂 Archivos del proyecto
| Archivo | Qué es |
| :--- | :--- |
| 📄 **[INTERMODULAR_SISTEMAS.pdf](./INTERMODULAR_SISTEMAS.pdf)** | Memoria técnica completa con capturas, scripts, automatizaciones de AD y políticas NTFS. |


---

> **Resumen:** He montado una infraestructura de sistemas híbrida, robusta y altamente automatizada, garantizando el control total de los usuarios, la alta disponibilidad de los servicios y la seguridad absoluta de los datos corporativos.
