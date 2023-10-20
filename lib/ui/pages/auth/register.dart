import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tus_canchas_app/ui/pages/auth/widgets_login.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({super.key});

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  TextEditingController email_text_controller = TextEditingController();
  TextEditingController user_text_controller = TextEditingController();
  TextEditingController password_text_controller = TextEditingController();
  String selected_option = '';
  List<String> items = ['','Usuario', 'Cliente'];

  void changeValueItems(String selectedItem) {
    setState(() {
      selected_option = selectedItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/auth/background_register.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Scaffold(
          
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: const Color.fromARGB(222, 30, 30, 30),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.height * 0.2,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/auth/logo_login.png'),
                                    fit: BoxFit.fill)),
                          )
                        ],
                      ),
                      TextFieldLoginRegister(
                          text_controller: email_text_controller,
                          text: 'Correo',
                          password: false),
                      TextFieldLoginRegister(
                          text_controller: user_text_controller,
                          text: 'Usuario',
                          password: false),
                      TextFieldLoginRegister(
                        text_controller: password_text_controller,
                        text: 'Contraseña',
                        password: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.85,
                          height:MediaQuery.of(context).size.height*0.063 ,
                          child: DropdownButton<String>(
                            dropdownColor: Colors.amber,
                            icon: const Icon(Icons.arrow_drop_down),
                            alignment: AlignmentDirectional.centerEnd,
                            iconSize: 30,
                            value: selected_option,
                            onChanged: (value) {
                              changeValueItems(value!);
                            },
                            items: items.map((String item) {
                              return DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                  '$item                                          ',
                                    style: TextStyle(
                                        color: Colors.grey[600], fontSize: 20),
                                  ));
                            }).toList(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.026,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.86,
                        height: MediaQuery.of(context).size.height * 0.057,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 0, 154, 80))),
                          onPressed: () {},
                          child: const Text(
                            'Sing Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('¿Ya estas Registrado?',
                                style: TextStyle(color: Colors.white)),
                            GestureDetector(
                                onTap: () {
                                  Get.toNamed('/login');
                                },
                                child: const Text(
                                  'Iniciar Sesión',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 154, 80)),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              IconButton(onPressed: (){
                Get.toNamed('/home');
              }, icon: const Icon(Icons.home),color: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
}
