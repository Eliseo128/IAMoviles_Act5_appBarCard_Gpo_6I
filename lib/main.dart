import 'package:flutter/material.dart';

void main() => runApp(AppTallerMecanico());

class AppTallerMecanico extends StatelessWidget {
  const AppTallerMecanico({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taller Mecánico', 
      home: Mecanico());
  }
}// fin clase AppTallerMecanico

class Mecanico extends StatelessWidget {
  const Mecanico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  
      title: Text("Taller Mecánico Neivy"),
      backgroundColor: Colors.limeAccent,
      actions: [
        Icon(Icons.bedroom_child),
        Icon(Icons.flight),

      ],
      
     ),
      drawer: Drawer(),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente en la columna
    children: [
      Container(
        width: 300,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          // Degradado guinda oscuro
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF660000), // Guinda base
              Color(0xFF2A0000), // Guinda casi negro
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(50),
              blurRadius: 15,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Imagen desde la red
            const CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white24,
              backgroundImage: NetworkImage('https://raw.githubusercontent.com/Eliseo128/IAMoviles_Act5_appBarCard_Gpo_6I/refs/heads/main/nava.jpg'),
            ),
            const SizedBox(height: 20),
            // Título
            const Text(
              'Eliseo Nava',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 8),
            // Subtítulo
            const Text(
              'Gerente de ventas',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.white70,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),
    );
  }
}//fin clase Mecanico