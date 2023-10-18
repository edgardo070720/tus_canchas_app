import 'package:flutter/material.dart';
import 'package:tus_canchas_app/ui/pages/pay/form_pay.dart';
import 'package:tus_canchas_app/ui/pages/pay/payments.dart';

class Pay extends StatelessWidget {
  const Pay({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(
          16.0), // Puedes ajustar el valor de padding según tus necesidades
      child: Column(
        children: [
          Payments(),
          Padding(
            padding: EdgeInsets.only(
                top: 16.0), // Ajusta el valor de top según tus necesidades
            child: FormPay(),
          ),
        ],
      ),
    );
  }
}
