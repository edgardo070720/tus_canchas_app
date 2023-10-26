import 'package:flutter/material.dart';
import './ui_helpers.dart';

class UserInfoForm extends StatefulWidget {
  const UserInfoForm({super.key});

  @override
  _UserInfoFormState createState() => _UserInfoFormState();
}

class _UserInfoFormState extends State<UserInfoForm> {
List<String> tiposDeCancha = ['Fútbol', 'Fútbol sala', 'Baloncesto', 'Tenis'];
  String? selectedTipoDeCancha;
  // TextEditingController tipoDeCanchaController = TextEditingController();

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
          buildCenteredTitle('Datos de la Cancha'),
          const SizedBox(height: 20.0),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Text('Tipo de Cancha'),
                   DropdownButton<String>(
                      isExpanded: true,
                      value: selectedTipoDeCancha,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedTipoDeCancha = newValue;
                          // tipoDeCanchaController.text = newValue ?? '';
                        });
                      },
                      items: tiposDeCancha.map((String tipo) {
                        return DropdownMenuItem<String>(
                          value: tipo,
                          child: Text(tipo),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Nombre'),
                    buildTextField(),
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
                    buildTextField(),
                  ],
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Horas Disponible'),
                    buildTextField(),
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
                    buildTextField(),
                  ],
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Telefono'),
                    buildTextField(),
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
                    buildTextField(),
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