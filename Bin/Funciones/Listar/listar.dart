import 'dart:io';


void ListarProducto(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    stdout.write('\nNo hay productos registrados.\n');
    return;
  }

  stdout.write('\n--- LISTA DE PRODUCTOS ---\n');
  stdout.write('${'N°'.padRight(5)}${'Nombre'.padRight(20)}${'Precio'.padRight(12)}Cantidad\n');
  stdout.write('${'-' * 45}\n');

  for (int i = 0; i < productos.length; i++) {
    final p = productos[i];
    final numero = (i + 1).toString().padRight(5);
    final nombre = p['nombre'].toString().padRight(20);
    final precio = '\$${p['precio']}'.padRight(12);
    final cantidad = p['cantidad'].toString();

    stdout.write('$numero$nombre$precio$cantidad\n');
  }

  stdout.write('${'-' * 45}\n');
  stdout.write('Total de productos: ${productos.length}\n');
}