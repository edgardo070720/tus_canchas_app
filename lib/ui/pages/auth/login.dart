import 'package:flutter/material.dart';

import 'widgets_login.dart';

class Login extends StatelessWidget {
  const Login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController user_text_controller = TextEditingController();
    TextEditingController password_text_controller = TextEditingController();
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/auth/background_login.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.white24,
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
                    TextFieldLogin(
                        text_controller: user_text_controller,
                        text: 'Usuario',
                        password: false),
                    TextFieldLogin(
                      text_controller: password_text_controller,
                      text: 'Contraseña',
                      password: true,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.86,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 0, 154, 80))),
                        onPressed: () {},
                        child: const Text(
                          'log In',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,fontSize: 20,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('¿No estas registrado?',
                              style: TextStyle(color: Colors.white)),
                          GestureDetector(
                              onDoubleTap: () {},
                              child: const Text(
                                'Registrarse',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 154, 80)),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
