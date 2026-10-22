import 'dart:io';

void AgregarProducto(List<Map<String, dynamic>> productos) {
  print('\n Agregar Nuevo Producto ');

  // Nombre del Producto
  String nombre = '';
  while (nombre.isEmpty) {
    stdout.write('Ingrese el nombre del producto: ');
    String? entrada = stdin.readLineSync();
    if (entrada != null && entrada.trim().isNotEmpty) {
      nombre = entrada.trim();
    } else {
      print('Error: El nombre no puede estar vacío.');
    }
  }

  // Precio del Producto
  double precio = 0.0;
  while (precio <= 0) {
    stdout.write('Ingrese el precio del producto: ');
    String? entrada = stdin.readLineSync();
    double? valor = double.tryParse(entrada ?? '');
    if (valor != null && valor > 0) {
      precio = valor;
    } else {
      print('Error: Ingrese un precio válido mayor a 0.');
    }
  }

  // Cantidad Disponible
  int cantidad = -1;
  while (cantidad < 0) {
    stdout.write('Ingrese la cantidad disponible: ');
    String? entrada = stdin.readLineSync();
    int? valor = int.tryParse(entrada ?? '');
    if (valor != null && valor >= 0) {
      cantidad = valor;
    } else {
      print('Error: Ingrese un número entero válido (>= 0).');
    }
  }

  // Mapa con los datos del producto
  Map<String, dynamic> nuevoProducto = {
    'nombre': nombre,
    'precio': precio,
    'cantidad': cantidad,
  };

  // Agregar el mapa a la lista general de productos
  productos.add(nuevoProducto);

  print('\nProducto "$nombre" agregado exitosamente');
}
