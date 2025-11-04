import 'package:flutter/material.dart';
import 'package:flutter_application_1/GridViewBuilderPage.dart';
import 'package:flutter_application_1/basicWidgets.dart';
import 'package:flutter_application_1/botonPers.dart';
import 'package:flutter_application_1/WidgetPersonal.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FB),
      appBar: AppBar(
        title: const Text(
          'Manual de Flutter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFF6A11CB),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Temas del Manual',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0xFF333333),
              ),
            ),
            const SizedBox(height: 25),

            // Lista de botones personalizados
            botonPers(
              text: 'Widgets Básicos',
              icon: Icons.widgets_rounded,
              onPressed: () {
                          // Acción al presionar el botón
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Basicwidgets(),
                            ),
                          );
                        },
            ),
            botonPers(
              text: 'Widgets Personalizados | Calculadora',
              icon: Icons.calculate,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Widgetpersonal()),
                );
              },
            ),
            botonPers(
              text: 'GridView ',
              icon: Icons.navigation_rounded,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GridViewEjemplo() ),
                );
              },
            ),
            botonPers(
              text: 'Animaciones',
              icon: Icons.animation_rounded,
              onPressed: () => print('Animaciones'),
            ),
            botonPers(
              text: 'Conexión a Internet',
              icon: Icons.cloud_rounded,
              onPressed: () => print('Conexión a Internet'),
            ),
            botonPers(
              text: 'Firebase y Base de Datos',
              icon: Icons.storage_rounded,
              onPressed: () => print('Firebase y Base de Datos'),
            ),
            botonPers(
              text: 'Publicación de Apps',
              icon: Icons.publish_rounded,
              onPressed: () => print('Publicación de Apps'),
            ),
          ],
        ),
      ),
    );
  }
}
