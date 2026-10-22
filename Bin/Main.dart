import 'dart:io';
import 'Funciones/Agregar/agregar.dart';
import 'Funciones/Eliminar/eliminar.dart';
import 'Funciones/Listar/listar.dart';
import 'Funciones/Actualizar/actualizar.dart';
void main(){
  List<Map<String, dynamic>> productos =[];
  bool ejecuntando = true;

  while (ejecuntando) {
    print('\n--- Catalogo de productos ---');
    print('1. Agregar Producto');
    print('2. Listar Producto');
    print('3. Actualizar Producto');
    print('4. Eliminiar Producto');
    print('5. Salir');
    stdout.write('Elige una opcion: ');

    String? opcion = stdin.readLineSync();
    switch (opcion) {
      case '1':
        AgregarProducto(productos);
        break;
      case '2':
        ListarProducto(productos);
        break;
      case '3':
        ActualizarProducto(productos);
       break;
      case'4' : 
       eliminarProducto(productos);
        break;
      case '5':
        print('Saliendo del catalogo');
        ejecuntando = false;
        break;
      default:
        print('opcion no válida . Intenta de nuevo');
    }
  }
}
