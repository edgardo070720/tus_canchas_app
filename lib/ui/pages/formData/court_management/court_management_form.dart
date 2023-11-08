import 'package:flutter/material.dart';
import './user_info_form.dart';
import './company_info_form.dart';
import './action_button.dart';

class CourtManagementForm extends StatelessWidget {
  const CourtManagementForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("registro canchas"),
        ),
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
                // const SizedBox(height: 50.0),
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

Widget _buildField(String label) {
  return Text(label);
}
