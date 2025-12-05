import 'package:flutter/material.dart';

class AppTheme {
  static const Color forestGreen = Color(0xFF5E8B5A);
  static const Color deepGreen = Color(0xFF2F4A2D);
  static const Color softCream = Color(0xFFF3E8D0);
  static const Color lightSand = Color(0xFFE9DFC4);
  static const Color accentOrange = Color(0xFFFF8A00);
  static const Color accentRed = Color(0xFFE85D3A);
  static const Color paleLeaf = Color(0xFFC6D7A7);
  static const Color cardTint = Color(0xFFF0E5C8);
  static const Color panelTint = Color(0xFFD7C7A5);

  static LinearGradient backgroundGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF3C5C38),
      Color(0xFF5E8B5A),
      Color(0xFFF3E8D0),
    ],
  );

  static BoxDecoration cardDecoration = BoxDecoration(
    color: cardTint.withOpacity(0.95),
    borderRadius: BorderRadius.circular(22),
    boxShadow: const [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 12,
        offset: Offset(0, 6),
      ),
    ],
  );

  static ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: accentOrange,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 14),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ),
    elevation: 8,
    shadowColor: Colors.black26,
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w800,
      letterSpacing: 0.2,
    ),
  );

  static ButtonStyle secondaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: accentRed,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    elevation: 6,
    shadowColor: Colors.black26,
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  );
}
