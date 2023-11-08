import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tus_canchas_app/domain/models/court.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List<Court>> getCanchas() async {
  List<Court> canchas = [];
  CollectionReference coleccionCanchas = db.collection('canchas');
  try {
    QuerySnapshot queryCanchas = await coleccionCanchas.get();
    for (var documento in queryCanchas.docs) {
      // Aquí utilizamos el modelo Court para obtener toda la información de la cancha
      Court cancha = Court.fromFirestore(documento);
      canchas.add(cancha);
    }
    return canchas;
  } catch (e) {
    print("Error al obtener datos: $e");
    return canchas; // O maneja el error de alguna otra manera.
  }
}
