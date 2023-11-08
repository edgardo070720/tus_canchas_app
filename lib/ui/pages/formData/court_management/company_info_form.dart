import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import './ui_helpers.dart';

class CompanyInfoForm extends StatefulWidget {
  const CompanyInfoForm({super.key});

  @override
  _CompanyInfoFormState createState() => _CompanyInfoFormState();
}

class _CompanyInfoFormState extends State<CompanyInfoForm> {
  Future<void> _takePicture() async {
    final imageFile = await ImagePicker().getImage(source: ImageSource.camera);

    if (imageFile == null) {
      return; // Si el usuario cancela la operación de la cámara.
    }

    // imageFile contiene la ruta de la imagen tomada.
    final File file = File(imageFile.path);

    // Ahora puedes hacer lo que quieras con el archivo, como mostrarlo en un ImageView o cargarlo en algún otro lugar.
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
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Center(
                  child: Text(
                    'Seleccionar Archivo',
                  ),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.folder),
              onPressed: () {
                //lógica para seleccionar un archivo.
              },
            ),
            IconButton(
              icon: const Icon(Icons.camera),
              onPressed: () {
                _takePicture(); // Llama a la función para tomar una foto.
              },
            ),
          ],
        ),
      ],
    );
  }

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
          buildCenteredTitle('Informacion Adicional'),
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
}
