import 'package:flutter/material.dart';

class Basicwidgets extends StatefulWidget {
  const Basicwidgets({super.key});

  @override
  State<Basicwidgets> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Basicwidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manual de Widgets Básicos Flutter'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // TÍTULO PRINCIPAL
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue),
              ),
              child: const Column(
                children: [
                  Icon(Icons.widgets, size: 50, color: Colors.blue),
                  SizedBox(height: 10),
                  Text(
                    'Manual de Widgets Flutter',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Aprende los widgets básicos con ejemplos prácticos',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            // 1. CONTAINER
            _buildWidgetSection(
              title: '1. Container',
              description: 'Widget de contenedor que puede tener margin, padding, bordes, color y más.',
              icon: Icons.crop_square,
              color: Colors.blue,
              examples: [
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(8),
                  color: Colors.blue[100],
                  child: const Text('Container simple con color'),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('Container con borde y bordes redondeados'),
                ),
              ],
            ),

            // 2. ROW
            _buildWidgetSection(
              title: '2. Row',
              description: 'Organiza widgets hijos en una fila horizontal.',
              icon: Icons.view_agenda,
              color: Colors.green,
              examples: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.green[100],
                        child: const Text('Izquierda'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.green[200],
                        child: const Text('Centro'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.green[300],
                        child: const Text('Derecha'),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // 3. COLUMN
            _buildWidgetSection(
              title: '3. Column',
              description: 'Organiza widgets hijos en una columna vertical.',
              icon: Icons.view_column,
              color: Colors.orange,
              examples: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.orange[100],
                        child: const Text('Elemento Superior'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.orange[200],
                        child: const Text('Elemento Medio'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.orange[300],
                        child: const Text('Elemento Inferior'),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // 4. TEXT
            _buildWidgetSection(
              title: '4. Text',
              description: 'Muestra texto con diferentes estilos y formatos.',
              icon: Icons.text_fields,
              color: Colors.purple,
              examples: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Texto normal - Tamaño por defecto'),
                    SizedBox(height: 8),
                    Text(
                      'Texto grande en negrita',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Texto colorido',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.purple,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // 5. BUTTONS
            _buildWidgetSection(
              title: '5. Botones',
              description: 'Diferentes tipos de botones para interactuar con la app.',
              icon: Icons.touch_app,
              color: Colors.red,
              examples: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Elevated Button'),
                    ),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Text Button'),
                    ),
                    const SizedBox(height: 8),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text('Outlined Button'),
                    ),
                    const SizedBox(height: 8),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),

            // 6. ICON
            _buildWidgetSection(
              title: '6. Icon',
              description: 'Muestra iconos de Material Design.',
              icon: Icons.emoji_emotions,
              color: Colors.amber,
              examples: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.home, color: Colors.blue, size: 30),
                    Icon(Icons.favorite, color: Colors.red, size: 30),
                    Icon(Icons.star, color: Colors.amber, size: 30),
                    Icon(Icons.settings, color: Colors.grey, size: 30),
                    Icon(Icons.share, color: Colors.green, size: 30),
                  ],
                ),
              ],
            ),

            // 7. TEXTFIELD
            _buildWidgetSection(
              title: '7. TextField',
              description: 'Campo de entrada de texto para capturar datos del usuario.',
              icon: Icons.edit,
              color: Colors.teal,
              examples: [
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nombre',
                    hintText: 'Ingresa tu nombre',
                  ),
                ),
                const SizedBox(height: 8),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contraseña',
                    hintText: 'Ingresa tu contraseña',
                  ),
                ),
              ],
            ),

            // 8. CARD
            _buildWidgetSection(
              title: '8. Card',
              description: 'Superficie con sombra y bordes redondeados para contenido agrupado.',
              icon: Icons.credit_card,
              color: Colors.indigo,
              examples: [
                Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Tarjeta de Ejemplo',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text('Esta es una Card con contenido organizado y sombra.'),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text('CANCELAR'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('ACEPTAR'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // 9. LISTVIEW
            _buildWidgetSection(
              title: '9. ListView',
              description: 'Lista desplazable de elementos.',
              icon: Icons.list,
              color: Colors.brown,
              examples: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: [
                      _buildListItem('Elemento de lista 1'),
                      _buildListItem('Elemento de lista 2'),
                      _buildListItem('Elemento de lista 3'),
                      _buildListItem('Elemento de lista 4'),
                    ],
                  ),
                ),
              ],
            ),

            // ESPACIO FINAL
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                '¡Has completado el manual de widgets básicos!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Método para construir secciones de widgets
  Widget _buildWidgetSection({
    required String title,
    required String description,
    required IconData icon,
    required Color color,
    required List<Widget> examples,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: color.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Encabezado de la sección
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: color, size: 24),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Descripción
          Text(
            description,
            style: const TextStyle(fontSize: 16, height: 1.4),
          ),
          const SizedBox(height: 16),

          // Ejemplos
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: color.withOpacity(0.05),
              border: Border.all(color: color.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: examples,
            ),
          ),
        ],
      ),
    );
  }

  // Método para construir items de lista
  Widget _buildListItem(String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          const Icon(Icons.circle, size: 8, color: Colors.grey),
          const SizedBox(width: 12),
          Text(text),
        ],
      ),
    );
  }
}