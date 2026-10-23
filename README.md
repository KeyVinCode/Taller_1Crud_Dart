# Taller 1: Gestión de Catálogo de Productos (Dart + Gitflow)

Aplicación de consola desarrollada en **Dart** para gestionar el catálogo de productos de una tienda mediante operaciones CRUD (Crear, Leer, Actualizar, Eliminar). Este proyecto fue construido aplicando buenas prácticas de desarrollo, manejo de estructuras de datos fundamentales y trabajo colaborativo bajo la metodología **Gitflow**.


## 🎯 Objetivos


### Objetivo General
Desarrollar una aplicación interactiva en consola con Dart para gestionar un catálogo de productos de una tienda, permitiendo crear, listar, actualizar y eliminar productos mediante una estructura clara y un flujo colaborativo profesional con Gitflow.


### Objetivos Específicos
* Implementar **listas** y **mapas** (`List<Map<String, dynamic>>`) para el almacenamiento dinámico de datos.
* Utilizar **ciclos** (`while`) para mantener el menú activo hasta que el usuario decida salir.
* Emplear estructuras **switch-case** para la navegación entre las diferentes opciones del menú.
* Controlar errores y validar entradas del usuario (validación de campos vacíos y valores fuera de rango).
* Aplicar la metodología **Gitflow** para el trabajo colaborativo con commits concretos y consistentes agrupados por módulo.

---


## ✨ Características y Funcionalidades

1. **➕ Agregar Producto:**
   * Solicita: Nombre del producto, Precio y Cantidad disponible.
   * Guarda los datos estructurados en un mapa dentro de la lista global de productos.

2. **📋 Listar Productos:**
   * Despliega la lista completa de productos mostrando: Número de índice, Nombre, Precio y Cantidad disponible.

3. **✏️ Actualizar Producto:**
   * Pide el número (índice) del producto a actualizar.
   * Permite modificar individualmente: Nombre, Precio y/o Cantidad disponible.
   * *Nota:* Si el usuario decide actualizar solo un dato, deja el resto con sus valores anteriores.

4. **🗑️ Eliminar Producto:**
   * Solicita el número (índice) del producto y lo remueve del catálogo.

5. **🚪 Salir:**
   * Finaliza la ejecución de la aplicación limpiamente rompiendo el ciclo principal.

---


## 🛠️ Estructura del Proyecto

```text
Taller_1Crud_Dart/
│
├── Bin/
│   ├── Funciones/
│   │   ├── Actualizar/
│   │   │   └── actualizar.dart  # Lógica para modificar datos de productos
│   │   ├── Agregar/
│   │   │   └── agregar.dart     # Lógica para registro de nuevos productos
│   │   ├── Eliminar/
│   │   │   └── eliminar.dart    # Lógica para remover productos por índice
│   │   └── Listar/
│   │       └── listar.dart      # Lógica para listar y dar formato al catálogo
│   └── Main.dart                # Punto de entrada y estructura switch-case
│
├── Lib/
│   └── Modelo.dart              # Definición de estructuras y mapas de datos
│
└── README.md
```


## 🚀 Requisitos Previos

* Tener instalado **Dart SDK** (Versión 2.18 o superior).
  * Verificar versión ejecutando: `dart --version`
* Cliente de **Git** instalado en el sistema.


## 💻 Instrucciones de Ejecución

1. **Clonar el repositorio:**
   ```bash
   git clone <URL_DEL_REPOSITORIO>
   cd Taller_1Crud_Dart
   ```

2. **Obtener dependencias (si aplica):**
   ```bash
   dart pub get
   ```

3. **Ejecutar la aplicación:**
   ```bash
   dart run Bin/Main.dart
   ```


## 👥 Equipo de Desarrollo y Distribución de Tareas

El equipo estuvo conformado por 5 integrantes, donde cada uno asumió la responsabilidad de un módulo específico en su respectiva rama de trabajo:

| Integrante | Actividades Asignadas / Módulo | Archivo Principal | Rama Trabajada |
| :--- | :--- | :--- | :--- |
| **Kevin Patiño** | Menú Principal (Estructura `switch-case`), control del ciclo principal y opción **Salir**. | `Bin/Main.dart` | `feature/menu-principal` |
| **Sebastian Taborda** | Módulo **Agregar Producto**: Lógica de entrada de datos, nombres, precio y stock. | `Bin/Funciones/Agregar/agregar.dart` | `feature/agregar-producto` |
| **Camila Tobon** | Módulo **Listar Productos**: Despliegue formateado con índice, nombre, precio y cantidad. | `Bin/Funciones/Listar/listar.dart` | `feature/listar-productos` |
| **Yilma Lopez** | Módulo **Actualizar Producto**: Modificación por índice y persistencia de campos no editados. | `Bin/Funciones/Actualizar/actualizar.dart` | `feature/actualizar-producto` |
| **Valery Vergara** | Módulo **Eliminar Producto**: Selección por índice y remoción del producto del catálogo. | `Bin/Funciones/Eliminar/eliminar.dart` | `feature/eliminar-producto` |