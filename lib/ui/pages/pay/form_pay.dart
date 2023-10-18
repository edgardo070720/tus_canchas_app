import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormPay extends StatefulWidget {
  const FormPay({super.key});

  @override
  State<FormPay> createState() => _FormPayState();
}

class _FormPayState extends State<FormPay> {
  String? _selectedOption;

  final List<String> _options = [
    "CC",
    "TI",
    "CE",
  ];
  TextEditingController cardNumberController = TextEditingController();

  // CardType cardType = CardType.Invalid;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(15)),
            child: DropdownButton<String>(
              hint: const Text("Selecciona tipo id"),
              icon: const Icon(Icons.arrow_drop_down),
              underline: const SizedBox(),
              style: const TextStyle(color: Colors.black, fontSize: 18),
              iconSize: 36,
              value: _selectedOption,
              items: _options.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption = newValue;
                });
              },
              isExpanded: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(15)),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Nombre completo", border: InputBorder.none),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(15)),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Cedula",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(15)),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Correo",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Telefono",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Container(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Horas",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    width: 80, // Ancho de la imagen
                    height: 80, // Alto de la imagen
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(10.0), // Bordes redondeados
                        color: const Color(
                            0XffEFEDF5) // Color de fondo del contenedor
                        ),
                    child: Image.network(
                        'https://www.bancolombia.com/wcm/connect/www.bancolombia.com-26918/08749bce-7395-4b19-b23c-e7fd93047a0a/logo-grupo-bancolombia.png?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_K9HC1202P864E0Q30449MS3000-08749bce-7395-4b19-b23c-e7fd93047a0a-nVP-YUW'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                  child: Container(
                    width: 80, // Ancho de la imagen
                    height: 80, // Alto de la imagen
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(10.0), // Bordes redondeados
                        color: const Color(
                            0XffEFEDF5) // Color de fondo del contenedor
                        ),
                    child: Image.network(
                        'https://domiciliocolombia.co/listings/nequi-propulsor-pse/nequi-logo/'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0,
                      top:
                          16.0), // Ajusta el valor de left y top según tus necesidades
                  child: Container(
                    width: 80, // Ancho de la imagen
                    height: 80, // Alto de la imagen
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(10.0), // Bordes redondeados
                      color: const Color(
                          0XffEFEDF5), // Color de fondo del contenedor
                    ),
                    child: Image.network(
                        'https://mir-s3-cdn-cf.behance.net/projects/404/af2be4165905879.Y3JvcCwxNDAwLDEwOTUsMCwxNTI.png'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF003D),
                      fixedSize: const Size(150, 10)),
                  child: const Text(
                    "Cancelar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5E17EB),
                      fixedSize: const Size(150, 10)),
                  child: const Text(
                    "Reservar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
