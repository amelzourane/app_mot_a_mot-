import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'choix_histoire.dart';
import 'compte_utilisateur.dart';
import 'mes_exercices.dart';
import 'Mes_progres.dart';
import 'parametres.dart';
import 'page_garde.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppTheme.softCream,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppTheme.accentOrange,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black87),
        ),
      ),
      home: const PageGarde(),
    );
  }
}

class AccueilScreen extends StatelessWidget {
  const AccueilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.softCream,
      body: Container(
        decoration: BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: SizedBox(
                width: 420,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _leafRow(),
                    const SizedBox(height: 16),
                    _brandCard(),
                    const SizedBox(height: 28),
                    MenuOvalButton(
                      text: "Lire une histoire",
                      color: AppTheme.deepGreen,
                      icon: Icons.menu_book_rounded,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChoixHistoireScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    MenuOvalButton(
                      text: "Mes progres",
                      color: AppTheme.paleLeaf,
                      icon: Icons.show_chart_rounded,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MesProgresScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    MenuOvalButton(
                      text: "Exercices",
                      color: const Color(0xFF46704B),
                      icon: Icons.extension_rounded,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MesExercicesScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    MenuOvalButton(
                      text: "Accueil",
                      color: AppTheme.accentOrange,
                      icon: Icons.home_filled,
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const PageGarde()),
                        );
                      },
                    ),
                    const SizedBox(height: 18),
                    MenuOvalButton(
                      text: "Compte utilisateur",
                      color: AppTheme.accentRed,
                      icon: Icons.person,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CompteUtilisateurPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ParametresPage(),
                          ),
                        );
                      },
                      style: AppTheme.secondaryButtonStyle,
                      child: const Text("Parametres"),
                    ),
                    const SizedBox(height: 24),
                    _footing(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _brandCard() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: AppTheme.cardDecoration,
      child: Column(
        children: const [
          Text(
            "Mot a Mot",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              color: AppTheme.deepGreen,
            ),
          ),
          SizedBox(height: 6),
          Text(
            "Lis, joue et progresse en douceur",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _leafRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _leaf(30),
        _leaf(38),
        _leaf(26),
      ],
    );
  }

  Widget _leaf(double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(size),
      ),
    );
  }

  Widget _footing() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        color: AppTheme.panelTint.withOpacity(0.9),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: const [
          Text(
            "Pret a explorer ?",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 6),
          Text(
            "Choisis une aventure et lance-toi",
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class MenuOvalButton extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;
  final VoidCallback onTap;

  const MenuOvalButton({
    super.key,
    required this.text,
    required this.color,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 260,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(2, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 22),
            const SizedBox(width: 12),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}