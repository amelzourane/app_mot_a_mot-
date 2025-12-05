import 'package:flutter/material.dart';

class MesProgresScreen extends StatelessWidget {
  const MesProgresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBC1B8), // Rose pâle Figma
      body: Center(
        child: SizedBox(
          width: 400, // largeur pour centrer sur PC/web
          child: Column(
            children: [

              const SizedBox(height: 40),

              // ----- Titre -----
              const Text(
                "📊 Mes progrès",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 10),

              const Text(
                "Regarde comment tu avances chaque jour",
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              // ----- Les bulles -----
              Wrap(
                spacing: 20,
                runSpacing: 25,
                alignment: WrapAlignment.center,
                children: const [
                  BubbleStat(
                    text: "⭐ Nombre\nd’étoiles\n12",
                    color: Colors.purpleAccent,
                  ),
                  BubbleStat(
                    text: "📅 Jours\nconsécutifs\n5 jours",
                    color: Colors.green,
                  ),
                  BubbleStat(
                    text: "🎓 Niveau\natteint\nDébutant",
                    color: Colors.lightBlue,
                  ),
                  BubbleStat(
                    text: "🎯 Objectif\nde la semaine\n10 étoiles",
                    color: Colors.brown,
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // ----- Bouton Accueil -----
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                ),
                child: const Text(
                  "Accueil",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ----- Bulle réutilisable -----
class BubbleStat extends StatelessWidget {
  final String text;
  final Color color;

  const BubbleStat({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 110,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(2, 3),
          )
        ],
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
