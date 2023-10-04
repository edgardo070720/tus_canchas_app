import 'package:flutter/material.dart';

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
