import 'package:flutter/material.dart';
import 'package:tus_canchas_app/ui/pages/auth/register.dart';
import 'package:tus_canchas_app/ui/pages/pay/pay.dart';

import 'pages/auth/login.dart';
import 'pages/booking/bookings.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.grey,useMaterial3: true ),
      initialRoute: "/user_register",
      routes: {
        "/login":(context) => const Login(),
        "/user_register":(context) => const RegisterUser(),

        "/payments":(context)=>const Pay(),
        "/bookings": (context) => const Booking(),
      },
    );
  }
}
