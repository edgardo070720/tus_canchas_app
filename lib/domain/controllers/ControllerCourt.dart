import 'package:get/get.dart';
import 'package:tus_canchas_app/data/services/court_srvice.dart';

import 'package:tus_canchas_app/domain/models/court.dart';

class CourtController extends GetxController {
  final Rxn<List<Court>> listaLocal = Rxn<List<Court>>([]);

  Future<void> traerCanchas() async {
    listaLocal.value = await getCanchas();
  }

  List<Court>? get listaFinal => listaLocal.value;
}
