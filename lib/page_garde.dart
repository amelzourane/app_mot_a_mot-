import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';
import 'main.dart';

class PageGarde extends StatelessWidget {
  const PageGarde({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4A6A45),
              Color(0xFF5E8B5A),
              Color(0xFFF3E8D0),
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(top: 40, left: 30, child: _leaf(52, Colors.white24)),
              Positioned(top: 90, right: 22, child: _leaf(36, Colors.white24)),
              Positioned(bottom: 80, left: 10, child: _leaf(70, Colors.white30)),
              Positioned(bottom: 120, right: 20, child: _leaf(50, Colors.white24)),
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                        decoration: BoxDecoration(
                          color: AppTheme.cardTint.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 14,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            // 🔥 Nouveau style décoré
                            Text(
                              "Mot a Mot",
                              style: GoogleFonts.playfairDisplay(
                                fontSize: 38,
                                fontWeight: FontWeight.w700,
                                color: AppTheme.deepGreen,
                                letterSpacing: 1.2,
                                shadows: const [
                                  Shadow(
                                    color: Colors.black26,
                                    blurRadius: 6,
                                    offset: Offset(2, 2),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),

                            // ✨ Nouvelle police douce
                            Text(
                              "Lis, joue et progresse en douceur",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 28),
                      _forestScene(),
                      const SizedBox(height: 28),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => const AccueilScreen()),
                          );
                        },
                        style: AppTheme.primaryButtonStyle.copyWith(
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 48, vertical: 14),
                          ),
                        ),
                        child: const Text("Entrer"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _leaf(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(size),
      ),
    );
  }

  Widget _forestScene() {
    return Container(
      width: 320,
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
      decoration: BoxDecoration(
        color: AppTheme.lightSand,
        borderRadius: BorderRadius.circular(28),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _bubbleCritter("🦔", Colors.green.shade200),
              _bubbleCritter("🦊", Colors.green.shade300),
              _bubbleCritter("🦝", Colors.green.shade200),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            "Prêt à explorer la forêt ?",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppTheme.deepGreen,
            ),
          ),
        ],
      ),
    );
  }

  Widget _bubbleCritter(String emoji, Color bg) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Text(
          emoji,
          style: const TextStyle(fontSize: 38),
        ),
      ),
    );
  }
}
