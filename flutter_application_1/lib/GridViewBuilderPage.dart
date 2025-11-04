import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: GridViewEjemplo(),
    debugShowCheckedModeBanner: false,
  ));
}

class GridViewEjemplo extends StatelessWidget {
  const GridViewEjemplo({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de colores para los cuadros
    final colores = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.teal,
      Colors.amber,
      Colors.pink,
      Colors.indigo,
      Colors.cyan,
      Colors.lime,
      Colors.brown,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo GridView.builder'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              '- GridView.builder crea una cuadrícula de forma eficiente.\n'
              '- Solo construye los elementos visibles.\n'
              '- Es ideal para listas o galerías grandes.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),

          // Expanded para que el grid ocupe el resto del espacio
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              // Define cómo se distribuyen los elementos
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Número fijo de columnas
                mainAxisSpacing: 8, // Espacio vertical
                crossAxisSpacing: 8, // Espacio horizontal
                childAspectRatio: 1, // Forma cuadrada
              ),
              itemCount: colores.length, // Total de elementos
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: colores[index],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Item ${index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(12.0),

          ),
        ],
      ),
    );
  }
}
