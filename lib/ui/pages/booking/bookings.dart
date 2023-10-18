import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cards_bookings.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                  color: Colors.grey.withOpacity(0.5),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: Row(
                children: [
                  const Icon(
                    CupertinoIcons.search,
                    color: Color(0xFF5E17EB),
                  ),
                  Container(
                    height: 50,
                    width: 280,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "buscar reserva",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const Icon(Icons.filter_list),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
          ),
          Container(
            width: 390,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFF1E1E1E),
            ),
            child: const Center(
              child: Text(
                "Listado de tus reservas ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          // Utiliza un ListView con dirección horizontal
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardsBooking(
                  imagePath: "../../../../assets/images/bookings/cancha.jpg",
                ),
                CardsBooking(
                  imagePath: "../../../../assets/images/bookings/cancha2.jpeg",
                ),
              ],
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardsBooking(
                  imagePath: "../../../../assets/images/bookings/cancha.jpg",
                ),
                CardsBooking(
                  imagePath: "../../../../assets/images/bookings/cancha2.jpeg",
                ),
              ],
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardsBooking(
                  imagePath: "../../../../assets/images/bookings/cancha.jpg",
                ),
                CardsBooking(
                  imagePath: "../../../../assets/images/bookings/cancha2.jpeg",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
