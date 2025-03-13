import 'package:flutter/material.dart';

class Proveedor {
  int id;
  String proveedor;
  String nombre;
  String apellido;
  String cargo;
  double salario;
  DateTime fechaContratacion;
  String telefono;

  Proveedor({
    required this.id,
    required this.proveedor,
    required this.nombre,
    required this.apellido,
    required this.cargo,
    required this.salario,
    required this.fechaContratacion,
    required this.telefono,
  });
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Proveedores')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildProveedorContainer(
                Proveedor(
                  id: 1,
                  proveedor: 'Proveedor A',
                  nombre: 'Juan',
                  apellido: 'Pérez',
                  cargo: 'Gerente',
                  salario: 5000.0,
                  fechaContratacion: DateTime(2023, 1, 15),
                  telefono: '123-456-7890',
                ),
                Colors.blue[100]!,
              ),
              SizedBox(height: 20), // Espacio entre los contenedores
              _buildProveedorContainer(
                Proveedor(
                  id: 2,
                  proveedor: 'Proveedor B',
                  nombre: 'María',
                  apellido: 'Gómez',
                  cargo: 'Analista',
                  salario: 3500.0,
                  fechaContratacion: DateTime(2023, 3, 10),
                  telefono: '987-654-3210',
                ),
                Colors.green[100]!,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildProveedorContainer(Proveedor proveedor, Color color) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ID: ${proveedor.id}'),
              Text('Proveedor: ${proveedor.proveedor}'),
              Text('Nombre: ${proveedor.nombre} ${proveedor.apellido}'),
              Text('Cargo: ${proveedor.cargo}'),
              Text('Salario: \$${proveedor.salario}'),
              Text(
                  'Fecha de Contratación: ${proveedor.fechaContratacion.toLocal()}'),
              Text('Teléfono: ${proveedor.telefono}'),
            ],
          ),
        ],
      ),
    );
  }
}
