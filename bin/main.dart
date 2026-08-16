import 'dart:io';
import '../lib/productos.dart';

void main() {//  guardamos todos los productos
  List<Map<String, dynamic>> productos = [];

  bool ejecutando = true;
  while (ejecutando) {

    print('     CATÁLOGO DE PRODUCTOS');
    print('................................');
    print('1. Agregar producto');
    print('2. Listar productos');
    print('3. Actualizar producto');
    print('4. Eliminar producto');
    print('5. Salir');

    stdout.write('Seleccione una opción: ');
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarProducto(productos);
        break;

      case '2':
        listarProductos(productos);
        break;

      case '3':
        actualizarProducto(productos);
        break;

      case '4':
        eliminarProducto(productos);
        break;

      case '5':
        print('\nSaliendo ...');
        ejecutando = false;
        break;

      default:
        print('\nOpción no válida.');
    }
  }
}