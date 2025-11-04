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
      backgroundColor: const Color(0xFFF4F6FB),
      appBar: AppBar(
        title: const Text(
          'Manual de Widgets Básicos Flutter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFF6A11CB),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            // TÍTULO PRINCIPAL CON ESTILO MODERNO
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  Icon(Icons.widgets, size: 60, color: Colors.white),
                  SizedBox(height: 15),
                  Text(
                    'Manual de Widgets Flutter',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Aprende los widgets básicos con ejemplos prácticos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            // 1. CONTAINER
            _buildWidgetSection(
              title: '1. Container',
              description: 'Widget de contenedor que puede tener margin, padding, bordes, color y más.',
              icon: Icons.crop_square,
              color: const Color(0xFF2575FC),
              examples: [
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2575FC).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text('Container simple con color'),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0xFF2575FC), width: 2),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
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
              color: const Color(0xFF10B981),
              examples: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFF10B981).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text('Izquierda'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFF10B981).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text('Centro'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFF10B981).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8),
                        ),
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
              color: const Color(0xFFFF6B35),
              examples: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF6B35).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text('Elemento Superior', textAlign: TextAlign.center),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.all(12),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF6B35).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text('Elemento Medio', textAlign: TextAlign.center),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.all(12),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF6B35).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text('Elemento Inferior', textAlign: TextAlign.center),
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
              color: const Color(0xFF8B5CF6),
              examples: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Texto normal - Tamaño por defecto',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Texto grande en negrita',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF333333),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Texto colorido y estilizado',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF8B5CF6),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
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
              color: const Color(0xFFEF4444),
              examples: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6A11CB),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('Elevated Button'),
                    ),
                    const SizedBox(height: 12),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: const Color(0xFF6A11CB),
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: const Text('Text Button'),
                    ),
                    const SizedBox(height: 12),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFF6A11CB),
                        side: const BorderSide(color: Color(0xFF6A11CB)),
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('Outlined Button'),
                    ),
                    const SizedBox(height: 12),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                      color: const Color(0xFFEF4444),
                      iconSize: 32,
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
              color: const Color(0xFFF59E0B),
              examples: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.home, color: Color(0xFF2575FC), size: 32),
                    Icon(Icons.favorite, color: Color(0xFFEF4444), size: 32),
                    Icon(Icons.star, color: Color(0xFFF59E0B), size: 32),
                    Icon(Icons.settings, color: Color(0xFF6B7280), size: 32),
                    Icon(Icons.share, color: Color(0xFF10B981), size: 32),
                  ],
                ),
              ],
            ),

            // 7. TEXTFIELD
            _buildWidgetSection(
              title: '7. TextField',
              description: 'Campo de entrada de texto para capturar datos del usuario.',
              icon: Icons.edit,
              color: const Color(0xFF14B8A6),
              examples: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelText: 'Nombre',
                    hintText: 'Ingresa tu nombre',
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xFF14B8A6), width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelText: 'Contraseña',
                    hintText: 'Ingresa tu contraseña',
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xFF14B8A6), width: 2),
                    ),
                  ),
                ),
              ],
            ),

            // 8. CARD
            _buildWidgetSection(
              title: '8. Card',
              description: 'Superficie con sombra y bordes redondeados para contenido agrupado.',
              icon: Icons.credit_card,
              color: const Color(0xFF6366F1),
              examples: [
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Tarjeta de Ejemplo',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF333333),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Esta es una Card con contenido organizado y sombra moderna.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF666666),
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            
                            const SizedBox(width: 8),
                            
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
              color: const Color(0xFF92400E),
              examples: [
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE5E7EB)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: [
                      _buildListItem('Elemento de lista 1'),
                      _buildListItem('Elemento de lista 2'),
                      _buildListItem('Elemento de lista 3'),
                      _buildListItem('Elemento de lista 4'),
                      _buildListItem('Elemento de lista 5'),
                    ],
                  ),
                ),
              ],
            ),

            // ESPACIO FINAL CON MENSAJE DE COMPLETADO
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 32,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: const Text(
                      '¡Has completado el manual de widgets básicos!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // Método para construir secciones de widgets con estilo moderno
  Widget _buildWidgetSection({
    required String title,
    required String description,
    required IconData icon,
    required Color color,
    required List<Widget> examples,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 15,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Encabezado de la sección con gradiente
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color.withOpacity(0.1),
                  color.withOpacity(0.05),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.15),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, color: color, size: 28),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: color,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFF6B7280),
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Ejemplos con fondo mejorado
          Container(
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFF8FAFC),
                border: Border.all(color: color.withOpacity(0.15)),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: examples,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Método para construir items de lista con estilo moderno
  Widget _buildListItem(String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE5E7EB)),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              color: Color(0xFF92400E),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF374151),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}