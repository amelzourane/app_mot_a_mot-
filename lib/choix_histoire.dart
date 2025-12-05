import 'package:flutter/material.dart';

class ChoixHistoireScreen extends StatelessWidget {
  const ChoixHistoireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8C6), // jaune clair Figma
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),

            // -------------------------
            // Titre
            // -------------------------
            const Text(
              "Choix du type d’histoire",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),

            const SizedBox(height: 35),

            // -------------------------
            // 2 colonnes × 4 lignes -> EXACTEMENT Figma
            // -------------------------
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StoryBox("✨ Mythes et légendes", Colors.orange),
                      StoryBox("✨ Contes magiques", Colors.pinkAccent),
                    ],
                  ),

                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StoryBox("📘 Histoires d'autrefois", Colors.purple.shade300),
                      StoryBox("✨ Contes magiques", Colors.red),
                    ],
                  ),

                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StoryBox("❤️ Histoires vraies", Colors.pink),
                      StoryBox("🌿 Nature et amitié", Colors.blueAccent),
                    ],
                  ),

                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StoryBox("🧭 Grandes aventures", Colors.teal),
                      StoryBox("🕵 Mystères et enquêtes", Colors.grey),
                    ],
                  ),
                ],
              ),
            ),

            // -------------------------
            // Bouton Accueil
            // -------------------------
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: const Text(
                "Accueil",
                style: TextStyle(fontSize: 20),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// -------------------------
// WIDGET — petit rectangle Figma
// -------------------------
Widget StoryBox(String title, Color color) {
  return Container(
    width: 150,
    height: 60,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 4,
          offset: Offset(2, 3),
        ),
      ],
    ),
    child: Center(
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}


