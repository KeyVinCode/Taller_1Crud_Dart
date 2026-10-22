import 'dart:io';

void eliminarProducto(List Catalogo) {
  if (Catalogo.isEmpty) {
    print('\nNo hay productos en el catálogo para eliminar.');
    return;
  }

  stdout.write('\nIngrese el número de índice del producto a eliminar: ');
  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada.trim().isEmpty) {
    print('Error: La entrada no puede estar vacía.');
    return;
  }

  int? indice = int.tryParse(entrada.trim());

  if (indice == null || indice < 1 || indice > Catalogo.length) {
    print('Error: Número fuera de rango. Debe ser entre 1 y ${Catalogo.length}.');
  } else {
    var eliminado = Catalogo.removeAt(indice - 1);
    
    // Obtiene el nombre si es un Mapa o si es una instancia de Modelo
    String nombre = 'Producto';
    if (eliminado is Map) {
      nombre = eliminado['nombre'] ?? 'Producto';
    } else {
      try {
        nombre = eliminado.nombre;
      } catch (_) {}
    }

    print('¡Producto "$nombre" eliminado con éxito!');
  }
}