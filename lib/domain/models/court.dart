import 'package:cloud_firestore/cloud_firestore.dart';

class Court {
  final String correo;
  final String direccion;
  final Timestamp horaDisponible;
  final String nombre;
  final String telefono;
  final String tipoCancha;
  final double valor;

  Court({
    required this.correo,
    required this.direccion,
    required this.horaDisponible,
    required this.nombre,
    required this.telefono,
    required this.tipoCancha,
    required this.valor,
  });

  factory Court.fromFirestore(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return Court(
      correo: data['correo'] ?? '',
      direccion: data['direccion'] ?? '',
      horaDisponible: data['hora_disponible'] ?? Timestamp(0, 0),
      nombre: data['nombre'] ?? '',
      telefono: data['telefono'] ?? '',
      tipoCancha: data['tipo_cancha'] ?? '',
      valor: (data['valor'] as double?) ?? 0.0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'correo': correo,
      'direccion': direccion,
      'hora_disponible': horaDisponible,
      'nombre': nombre,
      'telefono': telefono,
      'tipo_cancha': tipoCancha,
      'valor': valor,
    };
  }
}
