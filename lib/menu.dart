import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 30, color: Color.fromARGB(255, 0, 0, 0)),
            Expanded(
              child: Center(
                child: Text(
                  "Laboratorio - Menú",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Icon(Icons.menu, size: 30, color: Color.fromARGB(255, 0, 0, 0)),
          ],
        ),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: const Color.fromARGB(255, 165, 209, 250),
      ),
      body: SingleChildScrollView(
        // Asegúrate de que esté aquí
        child: Container(
          width: double.infinity,
          // Eliminar height: double.infinity, ya que SingleChildScrollView manejará el scroll
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://png.pngtree.com/background/20230526/original/pngtree-medical-laboratory-room-interior-and-wall-3d-picture-image_2750860.jpg", // Reemplaza con tu URL de la imagen
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            // Agregado para evitar que el contenido toque los bordes
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Asegurando que el contenido no se sobreponga
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "BIENVENIDO",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/loginScreen");
                          },
                          child: Image.network(
                            "https://cdn-icons-png.freepik.com/512/706/706192.png",
                            width: 120,
                            height: 120,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/menu");
                          },
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/12458/12458839.png",
                            width: 120,
                            height: 120,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 82, 17, 233),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Pacientes"),
                      onPressed: () {
                        Navigator.pushNamed(context, "/menu");
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 82, 17, 233),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Equipos"),
                      onPressed: () {
                        Navigator.pushNamed(context, "/menu");
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/menu");
                          },
                          child: Image.network(
                            "https://www.shutterstock.com/image-vector/flasher-icon-police-ambulance-alarm-600nw-2395395979.jpg",
                            width: 120,
                            height: 120,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/menu");
                          },
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/2464/2464568.png",
                            width: 120,
                            height: 120,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 82, 17, 233),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Alertas"),
                      onPressed: () {
                        Navigator.pushNamed(context, "/menu");
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 82, 17, 233),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Reportes"),
                      onPressed: () {
                        Navigator.pushNamed(context, "/reportes");
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 165, 209, 250),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(16.0),
                        width: MediaQuery.of(context).size.width *
                            0.8, // Ajusta el tamaño
                        child: Text(
                          "Los laboratorios clínicos están equipados con instrumentos, reactivos y personal capacitado. Esto es para realizar una amplia variedad de exámenes.",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 44, 44, 44),
                          ),
                          textAlign: TextAlign.left,
                          softWrap: true,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
