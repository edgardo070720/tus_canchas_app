import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tus_canchas_app/ui/pages/auth/register.dart';
import 'package:tus_canchas_app/ui/pages/home/home.dart';
import 'package:tus_canchas_app/ui/pages/pay/pay.dart';
import 'package:tus_canchas_app/ui/pages/formData/court_management_form.dart';
import 'package:tus_canchas_app/ui/pages/formData/user_management_form.dart';
import 'pages/auth/login.dart';
import 'pages/booking/bookings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.grey, useMaterial3: true),
      initialRoute: "/home",
      routes: {
        "/login":(context) => const Login(),
        "/user_register":(context) => const RegisterUser(),
        "/payments":(context)=>const Pay(),
        "/bookings": (context) => const Booking(),
        "/home": (context) => const Home(),
      },
    );
  }
}
