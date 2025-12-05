import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'quiz_score_page.dart';

class MotsFacilesScreen extends StatefulWidget {
  const MotsFacilesScreen({super.key});

  @override
  State<MotsFacilesScreen> createState() => _MotsFacilesScreenState();
}

class _MotsFacilesScreenState extends State<MotsFacilesScreen> {
  // Une seule reponse possible par question
  String? q1;
  String? q2;
  String? q3;

  int _calculateScore() {
    int score = 0;
    if (q1 == "chat") score++;
    if (q2 == "soleil") score++;
    if (q3 == "pomme") score++;
    return score;
  }

  bool _allAnswered() => q1 != null && q2 != null && q3 != null;

  void _goToScore() {
    if (!_allAnswered()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Reponds a toutes les questions avant de verifier."),
        ),
      );
      return;
    }

    final score = _calculateScore();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => QuizScorePage(
          score: score,
          total: 3,
          answers: [
            QuizAnswer(
              question: 'Le ___ dort dans le panier.',
              userAnswer: q1!,
              correctAnswer: 'chat',
            ),
            QuizAnswer(
              question: 'Le ___ brille dans le ciel.',
              userAnswer: q2!,
              correctAnswer: 'soleil',
            ),
            QuizAnswer(
              question: 'Je mange une ___ rouge.',
              userAnswer: q3!,
              correctAnswer: 'pomme',
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.softCream,
      body: Container(
        decoration: BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              width: 450,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    _header(),
                    const SizedBox(height: 22),
                    _questionCard(
                      question: '1. "Le ___ dort dans le panier."',
                      options: [
                        const MapEntry("CHAT", "chat"),
                        const MapEntry("CHIEN", "chien"),
                        const MapEntry("POISSON", "poisson"),
                      ],
                      groupValue: q1,
                      onChanged: (val) => setState(() => q1 = val),
                    ),
                    const SizedBox(height: 16),
                    _questionCard(
                      question: '2. "Le ___ brille dans le ciel."',
                      options: [
                        const MapEntry("LUNE", "lune"),
                        const MapEntry("SOLEIL", "soleil"),
                        const MapEntry("ETOILE", "etoile"),
                      ],
                      groupValue: q2,
                      onChanged: (val) => setState(() => q2 = val),
                    ),
                    const SizedBox(height: 16),
                    _questionCard(
                      question: '3. "Je mange une ___ rouge."',
                      options: [
                        const MapEntry("POMME", "pomme"),
                        const MapEntry("BANANE", "banane"),
                        const MapEntry("POIRE", "poire"),
                      ],
                      groupValue: q3,
                      onChanged: (val) => setState(() => q3 = val),
                    ),
                    const SizedBox(height: 24),
                    Center(
                      child: ElevatedButton(
                        onPressed: _goToScore,
                        style: AppTheme.primaryButtonStyle,
                        child: const Text("Verifier ma reponse"),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text(
                          "Retour",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppTheme.accentOrange,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: AppTheme.cardDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Exercice : Mots faciles",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 6),
          Text(
            "Choisis le mot qui complete la phrase",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _questionCard({
    required String question,
    required List<MapEntry<String, String>> options,
    required String? groupValue,
    required Function(String?) onChanged,
  }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppTheme.cardTint,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            ...options.map(
              (opt) => RadioListTile(
                title: Text(opt.key),
                value: opt.value,
                groupValue: groupValue,
                activeColor: AppTheme.accentOrange,
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
