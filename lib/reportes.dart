import 'package:flutter/material.dart';

class ReportesScreen extends StatefulWidget {
  const ReportesScreen({super.key});

  @override
  _ReportesScreenState createState() => _ReportesScreenState();
}

class _ReportesScreenState extends State<ReportesScreen> {
  // Datos simulados para la tabla de reportes
  final List<Map<String, String>> _reportes = [
    {
      "ID": "001",
      "Paciente": "Juan Pérez",
      "Fecha": "2024-12-01",
      "Estado": "Entregado"
    },
    {
      "ID": "002",
      "Paciente": "María López",
      "Fecha": "2024-12-02",
      "Estado": "Pendiente"
    },
    {
      "ID": "003",
      "Paciente": "Carlos Díaz",
      "Fecha": "2024-12-03",
      "Estado": "En Proceso"
    },
  ];

  String _filtroEstado = "Todos"; // Filtro inicial

  @override
  Widget build(BuildContext context) {
    // Filtrar los reportes según el estado seleccionado
    final reportesFiltrados = _filtroEstado == "Todos"
        ? _reportes
        : _reportes
            .where((reporte) => reporte["Estado"] == _filtroEstado)
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Reportes",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 165, 209, 250),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Filtros de estado
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  value: _filtroEstado,
                  items: const [
                    DropdownMenuItem(value: "Todos", child: Text("Todos")),
                    DropdownMenuItem(
                        value: "Entregado", child: Text("Entregado")),
                    DropdownMenuItem(
                        value: "Pendiente", child: Text("Pendiente")),
                    DropdownMenuItem(
                        value: "En Proceso", child: Text("En Proceso")),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _filtroEstado = value!;
                    });
                  },
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Acción para descargar reportes
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Descargando reportes...")),
                    );
                  },
                  icon: const Icon(Icons.download),
                  label: const Text("Descargar"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Encabezados de la tabla
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Expanded(
                    child: Text("ID",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(
                    child: Text("Paciente",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(
                    child: Text("Fecha",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(
                    child: Text("Estado",
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
            const Divider(),
            // Contenido de la tabla
            Expanded(
              child: ListView.builder(
                itemCount: reportesFiltrados.length,
                itemBuilder: (context, index) {
                  final reporte = reportesFiltrados[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(child: Text(reporte["ID"]!)),
                      Expanded(child: Text(reporte["Paciente"]!)),
                      Expanded(child: Text(reporte["Fecha"]!)),
                      Expanded(
                          child: Text(
                        reporte["Estado"]!,
                        style: TextStyle(
                          color: reporte["Estado"] == "Entregado"
                              ? Colors.green
                              : reporte["Estado"] == "Pendiente"
                                  ? Colors.orange
                                  : Colors.blue,
                        ),
                      )),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
