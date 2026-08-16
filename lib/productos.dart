import 'dart:io';
//FUNCION 1
void agregarProducto(List<Map<String, dynamic>> productos) {
  stdout.write('Nombre del producto: ');
  String nombre = stdin.readLineSync() ?? '';

  while (nombre.trim().isEmpty) {
    print('no puede estar vacío.');
    stdout.write('Ingresa el nombre del producto: ');
    nombre = stdin.readLineSync() ?? '';
  }

  // Pedimos el precio
  stdout.write('Ingresa el precio: ');
  double? precio = double.tryParse(stdin.readLineSync() ?? '');

  // VALIDA/PRECIO
  while (precio == null || precio < 0) {
    print('Ingresa un precio valido.');
    stdout.write('Ingresa el precio: ');
    precio = double.tryParse(stdin.readLineSync() ?? '');
  }

  // PIDO/CANTIDAD
  stdout.write('Cantidad Disponible: ');
  int? cantidad = int.tryParse(stdin.readLineSync() ?? '');

  // VALIDA/CANTIDAD
  while (cantidad == null || cantidad < 0) {
    print('Ingresa una cantidad valida.');
    stdout.write('Ingresa la cantidad disponible: ');
    cantidad = int.tryParse(stdin.readLineSync() ?? '');
  }

  // MAPA
  Map<String, dynamic> producto = {
    'nombre': nombre.trim(),
    'precio': precio,
    'cantidad': cantidad,
  };

  productos.add(producto);

  print('\nProducto "${producto['nombre']}" agregado correctamente.');
}

// FUNCION 2
void listarProductos(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print('\nNo hay productos registrados.');
    return;
  }

  print('\n---:::::::::::::::::::---');

  for (int i = 0; i < productos.length; i++) {
    print(
      '${i + 1}. '
      'Nombre: ${productos[i]['nombre']} | '
      'Precio: ${formatearPrecio(productos[i]['precio'])} | '
      'Cantidad: ${productos[i]['cantidad']}',
    );
  }
}

// FUNCION 3
void actualizarProducto(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print('\nNo hay productos para actualizar.');
    return;
  }

  listarProductos(productos);

  stdout.write('\nCual Producto Quieres cambiar?: ');
  int? indice = int.tryParse(stdin.readLineSync() ?? '');

  if (indice == null || indice < 1 || indice > productos.length) {
    print('Numero no valido.');
    return;
  }

  int posicion = indice - 1;

  print('\nDeja vacio si no quieres cambiarlo.');

  // Actualizar nombre
  stdout.write('Nuevo nombre (${productos[posicion]['nombre']}): ');
  String nuevoNombre = stdin.readLineSync() ?? '';

  if (nuevoNombre.trim().isNotEmpty) {
    productos[posicion]['nombre'] = nuevoNombre.trim();
  }

  //ACTUALI/PRECIO
  stdout.write(
    'Nuevo precio (${formatearPrecio(productos[posicion]['precio'])}): ',
  );
  String entradaPrecio = stdin.readLineSync() ?? '';

  if (entradaPrecio.trim().isNotEmpty) {
    double? nuevoPrecio = double.tryParse(entradaPrecio);

    if (nuevoPrecio != null && nuevoPrecio >= 0) {
      productos[posicion]['precio'] = nuevoPrecio;
    } else {
      print('Precio no valido.');
    }
  }
//ACTUALI/CANTIDAD
  stdout.write(
    'Nueva cantidad (${productos[posicion]['cantidad']}): ',
  );
  String entradaCantidad = stdin.readLineSync() ?? '';

  if (entradaCantidad.trim().isNotEmpty) {
    int? nuevaCantidad = int.tryParse(entradaCantidad);

    if (nuevaCantidad != null && nuevaCantidad >= 0) {
      productos[posicion]['cantidad'] = nuevaCantidad;
    } else {
      print('Cantidad no valida. ');
    }
  }

  print('\nProducto actualizado correctamente....');
}
//FUNCION 4/ELIMINAR
void eliminarProducto(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print('\nNo hay productos para eliminar.');
    return;
  }

  listarProductos(productos);

  stdout.write('\nIngresa el número a eliminar: ');
  int? indice = int.tryParse(stdin.readLineSync() ?? '');

  // EXISTENCIA/NUMERO
  if (indice == null || indice < 1 || indice > productos.length) {
    print('Número no válido.');
    return;
  }

  int posicion = indice - 1;

  String nombre = productos[posicion]['nombre'];

  productos.removeAt(posicion);

  print('\nProducto "$nombre" eliminado correctamente.');
}
//FUNCION 
String formatearPrecio(double precio) {
  String precioTexto = precio.toStringAsFixed(2);

  List<String> partes = precioTexto.split('.');

  String entero = partes[0];
  String decimal = partes[1];

  String resultado = '';

  int contador = 0;

  for (int i = entero.length - 1; i >= 0; i--) {
    resultado = entero[i] + resultado;
    contador++;

    if (contador == 3 && i != 0) {
      resultado = '.$resultado';
      contador = 0;
    }
  }

  return '\$$resultado,$decimal';
}