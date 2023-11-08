import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tus_canchas_app/domain/controllers/ControllerCourt.dart';
import 'package:tus_canchas_app/ui/pages/booking/cards_bookings.dart';
// Asegúrate de importar correctamente tu servicio Court.

class PruebaFire extends StatelessWidget {
  const PruebaFire({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CourtController uc = Get.find();
    uc.traerCanchas();
    return Scaffold(
        appBar: AppBar(
          title: const Text("lista de canchas"),
        ),
        body: Obx(() => ListView.builder(
            itemCount: uc.listaFinal!.length,
            itemBuilder: (BuildContext context, int index) {
              return CardsBooking(
                  textButton: "eliminar",
                  textButton2: "editar",
                  nombre: ' ${uc.listaFinal![index].nombre}',
                  valor: uc.listaFinal![index].valor,
                  imagePath: "../../../../assets/images/bookings/cancha.jpg");
            })));
    // Scaffold(
    //   body: FutureBuilder<List<Court>>(
    //     // Especifica el tipo de dato que esperas.
    //     future: getCanchas(),
    //     builder: (context, snapshot) {
    //       if (snapshot.connectionState == ConnectionState.waiting) {
    //         return const CircularProgressIndicator();
    //       } else if (snapshot.hasError) {
    //         return Text('Error: ${snapshot.error}');
    //       } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
    //         return const Text('No se encontraron canchas.');
    //       } else {
    //         return ListView.builder(
    //           itemCount: snapshot.data!.length,
    //           itemBuilder: (context, index) {
    //             // Accede a los atributos de Court para mostrar la información.
    //             final court = snapshot.data![index];
    //             return ListTile(
    //               title: Text(court.nombre),
    //               subtitle: Text(court.tipoCancha),
    //               // Agrega más atributos según tus necesidades.
    //             );
    //           },
    //         );
    //       }
    //     },
    //   ),
    // );
  }
}
