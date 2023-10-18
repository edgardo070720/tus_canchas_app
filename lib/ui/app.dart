import 'package:flutter/material.dart';
// import 'package:tus_canchas_app/ui/pages/formData/user_management_form.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Menu del AppBar'),
//         ),
//         body: const UserManagementForm(),
//       ),
//     );
//   }
// }

import 'pages/auth/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.grey,useMaterial3: true ),
      home:const Login(),
      routes: {
        "/login":(context) => const Login(),
      },
    );
  }
}
