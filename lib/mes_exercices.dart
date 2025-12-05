import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'mots_faciles.dart';

class MesExercicesScreen extends StatelessWidget {
  const MesExercicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.softCream,
      body: Container(
        decoration: BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: Center(
          child: SizedBox(
            width: 420,
            child: Column(
              children: [
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: AppTheme.cardDecoration,
                  child: Column(
                    children: const [
                      Text(
                        "Mes exercices de lecture",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                          color: AppTheme.deepGreen,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Amuse-toi a lire et progresse chaque jour",
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 26),
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppTheme.panelTint.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Wrap(
                    spacing: 18,
                    runSpacing: 22,
                    alignment: WrapAlignment.center,
                    children: [
                      TriangleButton(
                        text: "Mots faciles",
                        color: const Color(0xFF6E9E72),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MotsFacilesScreen(),
                            ),
                          );
                        },
                      ),
                      TriangleButton(
                        text: "Defis amusants",
                        color: const Color(0xFFB5D67B),
                        onTap: () {},
                      ),
                      TriangleButton(
                        text: "Apprendre les lettres",
                        color: const Color(0xFF4D6F4C),
                        onTap: () {},
                      ),
                      TriangleButton(
                        text: "Petites phrases",
                        color: AppTheme.accentOrange,
                        onTap: () {},
                      ),
                      TriangleButton(
                        text: "Jeux de lecture",
                        color: const Color(0xFF5E8B5A),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: AppTheme.secondaryButtonStyle,
                  child: const Text("Retour a l'accueil"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TriangleButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;

  const TriangleButton({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 120,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
