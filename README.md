#  Catálogo de Productos 

## Descripción del proyecto

Este proyecto consiste en una aplicación de consola desarrollada en **Dart** para gestionar el catálogo de productos de una tienda.

La aplicación permite realizar las operaciones básicas de un **CRUD**:

* Agregar productos.
* Listar productos.
* Actualizar productos.
* Eliminar productos.
* Salir del programa.

El proyecto fue desarrollado con el objetivo de practicar conceptos básicos de programación en Dart y aplicar buenas prácticas de control de versiones utilizando **Git y GitHub**.

---

## Objetivo

Desarrollar una aplicación de consola que permita administrar productos utilizando:

* Listas.
* Mapas.
* Ciclos.
* Estructuras `switch-case`.
* Funciones.
* Entrada de datos por consola.
* Validación de datos.
* Control de versiones con Git y GitHub.

---

## Funcionalidades

### 1. Agregar producto

Permite registrar un nuevo producto solicitando:

* Nombre.
* Precio.
* Cantidad disponible.


### 2. Listar productos

Muestra todos los productos registrados indicando:

* Número del producto.
* Nombre.
* Precio.
* Cantidad disponible.

### 3. Actualizar producto

Permite seleccionar un producto por su número y modificar:

* Nombre.
* Precio.
* Cantidad disponible.

### 4. Eliminar producto

Permite seleccionar un producto mediante su número y eliminarlo de la lista.

### 5. Salir

Finaliza la ejecución del programa.

---

##  Conceptos de Dart utilizados

Durante el desarrollo se aplicaron los siguientes conceptos:

### Listas

Los productos se almacenan en una lista:

```dart
List<Map<String, dynamic>> productos = [];
```

### Mapas

Cada producto se representa mediante un mapa:

```dart
Map<String, dynamic> producto = {
  'nombre': 'Bebida Energetica',
  'precio': 5000.0,
  'cantidad': 10,
};
```
### Ciclos

Se utiliza un ciclo `while` para mantener activo el menú y ciclos `for` para recorrer los productos.

### Switch-case

El menú principal utiliza `switch-case` para ejecutar la opción seleccionada por el usuario.

### Funciones

Las funcionalidades principales están separadas en funciones:

```text
agregarProducto()
listarProductos()
actualizarProducto()
eliminarProducto()
```

---

## 📁 Estructura del proyecto

```text
taller1_dart/
├── bin/
│   └── main.dart
│
├── lib/
│   └── productos.dart
│
├── .gitignore
└── README.md
```

### `bin/main.dart`

Contiene el punto de entrada de la aplicación y el menú principal.

### `lib/productos.dart`

Contiene las funciones encargadas de administrar los productos.

### `README.md`

Contiene la documentación general del proyecto.

---

## Requisitos

Para ejecutar el proyecto es necesario tener instalado:

* **Dart SDK**
* **Visual Studio Code** o cualquier editor compatible.
* **Git**

---

##  Ejecución

Clonar el repositorio:

```bash
git clone URL_DEL_REPOSITORIO
```

Ingresar a la carpeta:

```bash
cd taller1_dart
```

Ejecutar la aplicación:

```bash
dart run bin/main.dart
```

---

##  Ejemplo de uso

Al iniciar el programa se muestra el siguiente menú:

```text
1. Agregar producto
2. Listar productos
3. Actualizar producto
4. Eliminar producto
5. Salir

Seleccione una opción:
```

## 👩‍💻 Autora

**Mariana CM**
**AprendizSENA__ficha#3256538**


---
