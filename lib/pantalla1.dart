import 'package:flutter/material.dart';

void main() {
  runApp(const SakuraApp());
}

class SakuraApp extends StatelessWidget {
  const SakuraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Círculos decorativos
          Positioned(
            top: -60,
            left: -60,
            child: Circle(color: const Color(0xffed61c3), size: 200),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Circle(color: const Color(0xffe189c7), size: 80),
          ),
          Positioned(
            top: 100,
            right: -50,
            child: Circle(color: const Color(0xfff9b8eb), size: 150),
          ),
          // Nuevo círculo superior derecho
          Positioned(
            top: 30,
            right: -30,
            child: Circle(color: const Color(0xffe189c7), size: 100),
          ),
          // Círculos inferiores más juntos
          Positioned(
            bottom: -30,
            right: -60,
            child: Circle(color: const Color(0xffd97cbe), size: 220),
          ),
          Positioned(
            bottom: 40,
            left: 40,
            child: Circle(color: const Color(0xffed61c3), size: 100),
          ),
          Positioned(
            bottom: 70,
            left: 110,
            child: Circle(color: const Color(0xfff9b8eb), size: 60),
          ),

          // Ícono de "X" sin función
          Positioned(
            top: 40,
            right: 20,
            child: const Icon(
              Icons.close,
              size: 28,
              color: Colors.black,
            ),
          ),

          // Contenido principal
          Column(
            children: [
              const Spacer(flex: 2),
              Center(
                child: Image.asset(
                  'assets/imagenes/image 1.png',
                  height: 200,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Bienvenido',
                style: TextStyle(
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const Spacer(),
              CustomButton(text: 'Iniciar sesión'),
              const SizedBox(height: 20),
              CustomButton(text: 'Registrarse'),
              const Spacer(flex: 4),
            ],
          ),
        ],
      ),
    );
  }
}

class Circle extends StatelessWidget {
  final Color color;
  final double size;

  const Circle({super.key, required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color, // Color sin opacidad
        shape: BoxShape.circle,
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.pink.shade50,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(2, 3),
            blurRadius: 6,
          )
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
