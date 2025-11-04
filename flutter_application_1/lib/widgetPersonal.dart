import 'package:flutter/material.dart';
import 'package:flutter_application_1/botonPers.dart';

class Widgetpersonal extends StatefulWidget {
  const Widgetpersonal({super.key});

  @override
  State<Widgetpersonal> createState() => _WidgetpersonalState();
}

class _WidgetpersonalState extends State<Widgetpersonal> {
  final TextEditingController _numero1Controller = TextEditingController();
  final TextEditingController _numero2Controller = TextEditingController();
  final TextEditingController _resultadoController = TextEditingController();

  void _realizarOperacion(String operacion) {
    double? num1 = double.tryParse(_numero1Controller.text);
    double? num2 = double.tryParse(_numero2Controller.text);

    if (num1 == null || num2 == null) {
      _mostrarError('Por favor, ingresa números válidos');
      return;
    }

    double resultado = 0;
    switch (operacion) {
      case '+':
        resultado = num1 + num2;
        break;
      case '-':
        resultado = num1 - num2;
        break;
      case '*':
        resultado = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          _mostrarError('No se puede dividir por cero');
          return;
        }
        resultado = num1 / num2;
        break;
    }

    _resultadoController.text = resultado.toString();
  }

  void _limpiar() {
    _numero1Controller.clear();
    _numero2Controller.clear();
    _resultadoController.clear();
  }

  void _mostrarError(String mensaje) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.transparent,
        content: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Text(mensaje),
        ),
        duration: Duration(seconds: 5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FB),
      appBar: AppBar(
        title: const Text(
          'Widgets Personalizados',
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
              'Calculadora con Widgets Personalizados',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0xFF333333),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Aquí puedes ver el potencial de reutilizar widgets personalizados para crear una calculadora funcional.',
              style: TextStyle(fontSize: 16, color: Color(0xFF666666)),
            ),
            const SizedBox(height: 30),

            // Input para el primer número
            TextField(
              controller: _numero1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Primer número',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 15),

            // Input para el segundo número
            TextField(
              controller: _numero2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Segundo número',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 25),

            // Botones de operaciones usando el widget personalizado
            const Text(
              'Operaciones:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF333333),
              ),
            ),
            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: botonPers(
                    text: '',
                    icon: Icons.add,
                    onPressed: () => _realizarOperacion('+'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: botonPers(
                    text: '',
                    icon: Icons.remove,
                    onPressed: () => _realizarOperacion('-'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: botonPers(
                    text: '',
                    icon: Icons.close,
                    onPressed: () => _realizarOperacion('*'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: botonPers(
                    text: '/',
                    icon: null,
                    onPressed: () => _realizarOperacion('/'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),

            // Campo de resultado
            TextField(
              controller: _resultadoController,
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Resultado',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: const Color(0xFFE8F4FF),
              ),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6A11CB),
              ),
            ),
            const SizedBox(height: 25),

            // Botón de limpiar
            Center(
              child: botonPers(
                text: 'Limpiar Todo',
                icon: Icons.clear_all,
                onPressed: _limpiar,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _numero1Controller.dispose();
    _numero2Controller.dispose();
    _resultadoController.dispose();
    super.dispose();
  }
}
