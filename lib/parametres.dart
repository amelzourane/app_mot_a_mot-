import 'package:flutter/material.dart';

class ParametresPage extends StatelessWidget {
  const ParametresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9B0),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Titre
            const Text(
              'Paramètres',
              style: TextStyle(
                fontSize: 26,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 8),
            const Text(
              'Personnalise ton espace de lecture ✨',
              style: TextStyle(fontSize: 14),
            ),

            const SizedBox(height: 20),

            // Liste des paramètres
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: const [
                    SettingsCard(
                      color: Color(0xFF42A5F5),
                      emoji: '😊',
                      title: 'Profil de l’enfant',
                      subtitle: 'Changer le nom, l’avatar ou l’âge.',
                    ),
                    SizedBox(height: 14),

                    SettingsCard(
                      color: Color(0xFFFF7043),
                      emoji: '🎯',
                      title: 'Objectifs de lecture',
                      subtitle:
                          'Modifier les objectifs quotidiens et hebdomadaires.',
                    ),
                    SizedBox(height: 14),

                    SettingsCard(
                      color: Color(0xFF8E24AA),
                      emoji: '🔊',
                      title: 'Sons & Musique',
                      subtitle: 'Activer ou désactiver les sons.',
                    ),
                    SizedBox(height: 14),

                    SettingsCard(
                      color: Color(0xFF6D4C41),
                      emoji: '🌙',
                      title: 'Mode nuit',
                      subtitle: 'Réduire la luminosité pour le soir.',
                    ),
                    SizedBox(height: 14),

                    SettingsCard(
                      color: Color(0xFF26A69A),
                      emoji: '🌍',
                      title: 'Langue',
                      subtitle: 'Français, Anglais, Arabe…',
                    ),
                    SizedBox(height: 14),

                    SettingsCard(
                      color: Color(0xFFFFCA28),
                      emoji: '🔔',
                      title: 'Rappels de lecture',
                      subtitle: 'Choisir l’heure des notifications.',
                    ),
                    SizedBox(height: 14),

                    SettingsCard(
                      color: Color(0xFFEC407A),
                      emoji: '📏',
                      title: 'Taille du texte',
                      subtitle: 'Petite, normale ou grande.',
                    ),
                    SizedBox(height: 14),

                    SettingsCard(
                      color: Color(0xFFEF5350),
                      emoji: '🔄',
                      title: 'Réinitialiser la progression',
                      subtitle: 'Supprimer les étoiles et niveaux.',
                    ),
                  ],
                ),
              ),
            ),

            // Bouton accueil
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF76FF03),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Accueil',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ------------------ Carte paramètre ------------------

class SettingsCard extends StatelessWidget {
  final Color color;
  final String emoji;
  final String title;
  final String subtitle;

  const SettingsCard({
    super.key,
    required this.color,
    required this.emoji,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 26)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
