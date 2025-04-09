
# Read A Book

## 📌 Descripción
Read A Book es una plataforma web CRUD para la gestión de libros y usuarios. Permite a los administradores gestionar la información de los libros y usuarios, y a los clientes explorar y suscribirse a novedades.

## 🚀 Características
- Autenticación de usuarios  
- Gestión de libros (crear, editar, eliminar)  
- Gestión de usuarios (crear, editar, eliminar)  
- Sistema de suscripción  
- Panel de administración  
- Reportes de actividad  

## 🛠️ Tecnologías Utilizadas
- **Backend:** PHP con MySQL  
- **Frontend:** HTML, CSS, JavaScript  
- **Control de versiones:** Git y GitHub  
- **Entorno de desarrollo:** Laragon  

## 🔑 Credenciales de Acceso

### **Administrador**
- **Email:** admin@readabook.com  
- **Contraseña:** `1234`  
- **Rol:** Admin  

### **Usuarios**
- **Email:** usuario@readabook.com  
- **Contraseña:** `1234`  
- **Rol:** Usuario  

## 📝 Instalación y Configuración
1. Clonar el repositorio:
   ```bash
   git clone https://github.com/BilyAlv/Proyecto-P3-readabook
   ```
2. Importar la base de datos desde el archivo `db/db.sql` o `db/db 2.sql` a tu servidor MySQL.
3. Configurar el archivo `includes/db.php` con tus credenciales de base de datos.
4. Abrir el proyecto en tu servidor local (por ejemplo, Laragon) y accede a `index.php` para empezar.

## 🧑‍💻 Estructura del Proyecto

```plaintext
readabook/
├── admin/
│   ├── editar_libro.php
│   ├── editar_usuario.php
│   ├── gestionar_libros.php
│   ├── gestionar_usuarios.php
│   ├── index.php
│   └── reportes.php
├── cliente/
├── css/
│   ├── admin_footer.css
│   ├── admin_header.css
│   ├── admin.css
│   ├── editar_libro.css
│   ├── editar_usuarios.css
│   ├── gestion_libros_css
│   ├── gestion_usuarios.css
│   ├── login.css
│   └── reportes.css
├── db/
│   ├── db 2.sql
│   └── db.sql
├── img/
├── includes/
│   ├── admin_footer.php
│   ├── admin_header.php
│   └── db.php
├── js/
│   └── script.js
├── php/
│   ├── logica-gestion-de-libros.php
│   ├── logica-gestion-usuarios.php
│   ├── logica-index.php
│   └── obtener_libro.php
├── uploads/
├── login.php
├── logout.php
└── README.md
```

## 🔧 Recursos Adicionales
- Para más detalles sobre el proyecto, consulta el código en GitHub: [BilyAlv/ReedABook](https://github.com/BilyAlv/ReedABook).
