import 'package:flutter/material.dart';
import 'package:tus_canchas_app/ui/pages/formData/user_management/action_button.dart';
import 'package:tus_canchas_app/ui/pages/formData/user_management/company_info_form.dart';
import 'package:tus_canchas_app/ui/pages/formData/user_management/user_info_form.dart';


class UserManagementForm extends StatelessWidget {
  const UserManagementForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:SingleChildScrollView(
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
                  child:const Center(
  
                    child:  Text(
                      'Gestión de Usuarios',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                ),
            // Section 'Datos Personales',
           const SizedBox(height: 20.0),
            const UserInfoForm(),
           const SizedBox(height: 50.0),
            // Section 'Datos de la Empresa'
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
    )
    );
  }
}
Widget buildField(String label) {
  return Text(label);
}