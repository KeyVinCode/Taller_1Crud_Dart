import 'dart:io';

/// Función encargada de buscar un producto en la lista por su índice
void ActualizarProducto(List<Map<String, dynamic>> productos) {
  print('\nActualizar Producto');

  // Validar si existen productos registrados
  if (productos.isEmpty) {
    print('El catálogo está vacío. No hay productos para actualizar.');
    return;
  }

  // Mostrar la lista de productos para orientar al usuario
  print('Listado de productos disponibles:');
  for (int i = 0; i < productos.length; i++) {
    print(
      '${i + 1}. Nombre: ${productos[i]['nombre']} | '
      'Precio: \$${productos[i]['precio']} | '
      'Cantidad: ${productos[i]['cantidad']}',
    );
  }

  // Solicitar el índice del producto a modificar
  stdout.write('\nIngrese el número del producto que desea actualizar: ');
  String? entradaIndice = stdin.readLineSync();
  int? indice = int.tryParse(entradaIndice ?? '');

  if (indice == null || indice < 1 || indice > productos.length) {
    print('Error: Número de producto inválido o fuera de rango.');
    return;
  }

  // Convertir a posición real dentro de la lista
  int indexReal = indice - 1;
  Map<String, dynamic> productoActual = productos[indexReal];

  print('\nModificando: ${productoActual['nombre']}');
  print('Deje el campo vacío y presione Enter si NO desea modificarlo.');

  // Actualizar Nombre
  stdout.write('Nuevo nombre [Actual: ${productoActual['nombre']}]: ');
  String? nuevoNombre = stdin.readLineSync();
  if (nuevoNombre != null && nuevoNombre.trim().isNotEmpty) {
    productoActual['nombre'] = nuevoNombre.trim();
  }

  // Actualizar Precio
  stdout.write('Nuevo precio [Actual: \$${productoActual['precio']}]: ');
  String? nuevoPrecioStr = stdin.readLineSync();
  if (nuevoPrecioStr != null && nuevoPrecioStr.trim().isNotEmpty) {
    double? nuevoPrecio = double.tryParse(nuevoPrecioStr.trim());
    if (nuevoPrecio != null && nuevoPrecio > 0) {
      productoActual['precio'] = nuevoPrecio;
    } else {
      print(
        'Precio no válido (debe ser mayor a 0). Se conservó el valor anterior.',
      );
    }
  }

  // Actualizar Cantidad
  stdout.write('Nueva cantidad [Actual: ${productoActual['cantidad']}]: ');
  String? nuevaCantidadStr = stdin.readLineSync();
  if (nuevaCantidadStr != null && nuevaCantidadStr.trim().isNotEmpty) {
    int? nuevaCantidad = int.tryParse(nuevaCantidadStr.trim());
    if (nuevaCantidad != null && nuevaCantidad >= 0) {
      productoActual['cantidad'] = nuevaCantidad;
    } else {
      print(
        'Cantidad no válida (debe ser entera mayor o igual a 0). Se conservó el valor anterior.',
      );
    }
  }

  print('\nProducto "${productoActual['nombre']}" actualizado correctamente');
}
