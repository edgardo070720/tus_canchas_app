import 'package:flutter/material.dart';

class CardsBooking extends StatelessWidget {
  final String imagePath;

  const CardsBooking({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 130,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          imagePath,
                         

                          width:
                              400, // Puedes ajustar esto según tus necesidades
                          fit:
                              BoxFit.cover, // Ajusta esto según tus necesidades
                        ),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "60.00 COP",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.date_range,
                          color: Color(0xFF5E17EB),
                          size: 26,
                        )
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "cancha de futbol",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                            color: const Color(0xFFFF003D),
                            height: 30,
                            minWidth: 30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            onPressed: () {},
                            child: const Text("cancelar",
                                style: TextStyle(color: Colors.white))),
                        MaterialButton(
                            color: const Color(0xFF009A50),
                            height: 30,
                            minWidth: 80,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            onPressed: () {},
                            child: const Text("pagar",
                                style: TextStyle(
                                  color: Colors.white,
                                ))),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
