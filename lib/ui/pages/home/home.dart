import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selected_option = 0;
  List<bool> list_state_favorite = List.filled(20, false);
  List<String> options = ['Futbol', 'Futbol Sala', 'Basketball', 'Tennis'];
  int selected_navigation = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 50,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/auth/logo_login.png'),
                      fit: BoxFit.fill)),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(Icons.sports_soccer, size: 35),
          )
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage('assets/images/home/banner_home.png'),
                    fit: BoxFit.fill),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Reserva las mejores canchas\n de los mejores sitios a buen precio.\nAceptamos diversas formas de pago.\n Atencion 24 horas',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.04,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: options.length,
                itemBuilder: (context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selected_option = index;
                      });
                    },
                    child: Text(
                      '${options[index]}  ',
                      style: TextStyle(
                          fontSize: 20,
                          decoration: (selected_option == index)
                              ? TextDecoration.underline
                              : TextDecoration.none,
                          color: (selected_option == index)
                              ? const Color.fromARGB(255, 94, 23, 235)
                              : Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height * 0.6,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.115,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/bookings/cancha.jpg'),
                                fit: BoxFit.fill)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('\$ 50.000 COP'),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  (list_state_favorite[index] == false)
                                      ? list_state_favorite[index] = true
                                      : list_state_favorite[index] = false;
                                });
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: (list_state_favorite[index] == true)
                                    ? const Color.fromARGB(255, 94, 23, 235)
                                    : const Color.fromARGB(125, 30, 30, 30),
                              )),
                        ],
                      ),
                      const Text(
                        'cancha de futbol 5',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Text(
                        'Biblos',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.04,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(5)),
              child: const Column(
                children: [
                  Text(
                    'Encuentra tu pasion con el deporte',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Tenemos las canchas deportivas con mas reservas, para que le eches ojo...',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      selected_navigation = 0;
                    });
                  },
                  icon: Icon(
                    Icons.house,
                    color: (selected_navigation == 0)
                        ? const Color.fromARGB(255, 94, 23, 235)
                        : const Color.fromARGB(125, 30, 30, 30),
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      selected_navigation = 1;
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: (selected_navigation == 1)
                        ? const Color.fromARGB(255, 94, 23, 235)
                        : const Color.fromARGB(125, 30, 30, 30),
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      selected_navigation = 2;
                    });
                  },
                  icon: Icon(
                    Icons.person,
                    color: (selected_navigation == 2)
                        ? const Color.fromARGB(255, 94, 23, 235)
                        : const Color.fromARGB(125, 30, 30, 30),
                  ))
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DrawerHeader(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/auth/logo_login.png'),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      const Text(
                        'Hola!,',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      const Text(
                        'cristiano',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: const Text('Canchas'),
                  leading: const Icon(Icons.sports_soccer_outlined),
                ),
                Visibility(
                  visible: true,
                  child: ListTile(
                    title: const Text('Editar Iformación'),
                    leading: const Icon(Icons.person),
                  ),
                ),
                Visibility(
                  visible: true,
                  child: ListTile(
                    title: const Text('Gestion Reservas'),
                    leading: const Icon(Icons.edit),
                  ),
                ),
                Visibility(
                  visible: true,
                  child: ListTile(
                    title: const Text('Gestion Canchas'),
                    leading: const Icon(Icons.add_circle),
                  ),
                ),
                Visibility(
                  visible: true,
                  child: ListTile(
                    title: const Text('Gestion Quejas'),
                    leading: const Icon(Icons.announcement_rounded),
                  ),
                ),
              ],
            ),
            Container(
              color: Color.fromARGB(255, 94, 23, 235),
              child: ListTile(
                title: const Text(
                  'Cerrar Sesión',
                  style: TextStyle(color: Colors.white),
                ),
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
