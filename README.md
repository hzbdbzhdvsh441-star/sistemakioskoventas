# Sistema de Ventas para Kiosko_Bazar de Barrio

Este proyecto es un sistema web de ventas pensado para kioskos, bazares o tiendas de barrio en Bolivia. Ha sido desarrollado con PHP, MySQL y HTML/CSS, y está optimizado para funcionar en entornos locales como XAMPP.

## 🎯 Características principales
- ✅ Gestión de productos (alta, edición, eliminación)
- ✅ Registro y control de ventas
- ✅ Gestión de usuarios con rol de administrador
- ✅ Reportes básicos de ventas
- ✅ Interfaz amigable y responsive
- ✅ Moneda oficial: Bolivianos (Bs.)

## 👤 Usuario administrador
- **Usuario**: admin  
- **Contraseña**: (almacenada de forma hasheada en la base de datos)  
> Puedes cambiar estos datos directamente en la tabla `usuarios` tras instalar el sistema.

## 📁 Estructura recomendada del proyecto
- `/config` : Configuración general y conexión a la base de datos
- `/public` : Archivos públicos (login, index principal, vista de usuarios, productos, ventas)
- `/src` : Lógica del sistema (controladores, clases, validaciones)
- `/assets` : Archivos estáticos como imágenes, hojas de estilo CSS y scripts JS

## 🛠️ Requisitos del sistema
- XAMPP o similar con PHP 7.4+
- MySQL / MariaDB
- Navegador moderno (recomendado: Chrome o Firefox)

## 📦 Instalación paso a paso
1. Clona o descarga este repositorio dentro de la carpeta `htdocs` de XAMPP.
2. Inicia Apache y MySQL desde el panel de XAMPP.
3. Importa el archivo `database.sql` en phpMyAdmin o usando la línea de comandos MySQL.
4. Configura el archivo `/config/db.php` con tus datos locales (usualmente `root` sin contraseña en localhost).
5. Accede desde el navegador a:  
   `http://localhost/sistemaKiosko/public/login.php`
6. Inicia sesión con el usuario administrador.

## 🖥️ Tecnologías usadas
- **PHP** (backend)
- **MySQL** (base de datos)
- **HTML5 / CSS3**
- **Bootstrap** (para diseño responsive)
- **JavaScript básico**

## 🎥 Video de demostración
Mira la demostración del sistema y más proyectos en el canal oficial:  
👉 [YouTube - @jdav777](https://www.youtube.com/@jdav777)

## 📝 Notas adicionales
- Este proyecto está pensado como una base para futuras mejoras, incluyendo reportes avanzados, control de stock o integración con WhatsApp.
- Si estás usando un hosting gratuito (como ByteHost), recuerda que solo puedes tener una base de datos. Para múltiples proyectos, usa **prefijos** en las tablas para evitar conflictos.

---

🔧 Desarrollado por JDavid para apoyar a emprendedores de Bolivia en la digitalización de sus ventas.
