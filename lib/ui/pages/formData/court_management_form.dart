import 'package:flutter/material.dart';

class CourtManagementForm extends StatelessWidget {
  const CourtManagementForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Center(
                child: Text(
                  'Gestión de Canchas',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
            // Section 'Datos de la Cancha',
            const SizedBox(height: 20.0),
            const UserInfoForm(),
            const SizedBox(height: 50.0),
            // Section 'Infomacion adicional'
            const SizedBox(height: 20.0),
            const CompanyInfoForm(),
            const SizedBox(height: 20.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ActionButton(label: 'Cancelar', color: Colors.black),
                ActionButton(label: 'Registrar', color: Colors.green),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class UserInfoForm extends StatelessWidget {
  const UserInfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCenteredTitle('Datos de la Cancha'),
          const SizedBox(height: 20.0),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Tipo de Cancha'),
                    _buildTextField(),
                  ],
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Nombre'),
                    _buildTextField(),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Valor'),
                    _buildTextField(),
                  ],
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Horas Disponible'),
                    _buildTextField(),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Correo'),
                    _buildTextField(),
                  ],
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Telefono'),
                    _buildTextField(),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Direccion'),
                    _buildTextField(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CompanyInfoForm extends StatelessWidget {
  const CompanyInfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCenteredTitle('Informacion Adicional'),
          const SizedBox(height: 20.0),
          Row(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Para ocupar el espacio vertical.
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFileInput('Foto 1'),
                    _buildFileInput('Foto 2'),
                    _buildFileInput('Foto 3'),
                  ],
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Descripción'),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14.0),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 16.0,
                          ),
                        ),
                        maxLines: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFileInput(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 30.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Center(
                  child: Text('Seleccionar Archivo'),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.folder),
              onPressed: () {
                //lógica para seleccionar un archivo.
              },
            ),
          ],
        ),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onPressed;

  const ActionButton({
    super.key,
    required this.label,
    required this.color,
    this.onPressed = _defaultCallback,
  });

  static void _defaultCallback() {}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      child: Text(label, style: const TextStyle(color: Colors.white)),
    );
  }
}

Widget _buildField(String label) {
  return Text(label);
}

Widget _buildCenteredTitle(String title) {
  return Center(
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF5E17EB), // Color personalizado #5E17EB
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget _buildTextField() {
  return Container(
    height: 23.0,
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: TextFormField(
      style: const TextStyle(fontSize: 14.0),
      decoration: const InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
      ),
    ),
  );
}
