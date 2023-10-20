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
<<<<<<< HEAD
        "/login":(context) => const Login(),
        "/user_register":(context) => const RegisterUser(),
        "/payments":(context)=>const Pay(),
=======
        "/login": (context) => const Login(),
        "/user_register": (context) => const RegisterUser(),
        "/cancha": (context) => const CourtManagementForm(),
        "/payments": (context) => const Pay(),
        "/usuarios": (context) => const UserManagementForm(),
>>>>>>> dd1ad183b4b7f51f7ad5db366e1787ac7fe87279
        "/bookings": (context) => const Booking(),
        "/home": (context) => const Home(),
      },
    );
  }
}
