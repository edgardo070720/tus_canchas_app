import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List<String>> getTipos() async {
  List<String> tipos = [];
  CollectionReference coleccionTipos = db.collection('tipo_canchas');
  try {
    QuerySnapshot queryTipo = await coleccionTipos.get();
    for (var documento in queryTipo.docs) {
      tipos.add(documento.get(
          'nombre')); // Reemplaza 'nombre_del_campo' con el nombre del campo que contiene los strings en tu Firestore
    }
    return tipos;
  } catch (e) {
    print("Error al obtener datos: $e");
    return tipos; // O maneja el error de alguna otra manera.
  }
}
