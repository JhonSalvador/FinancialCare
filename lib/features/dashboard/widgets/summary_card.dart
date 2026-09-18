import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  final String title;

  final String value;

  final IconData icon;

  const SummaryCard({
    super.key,

    required this.title,

    required this.value,

    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: const Color(0xFFF8FAF9),

        borderRadius: BorderRadius.circular(16),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Icon(icon, color: const Color(0xFF005124)),

          const SizedBox(height: 10),

          Text(title, style: const TextStyle(color: Colors.grey)),

          Text(
            value,

            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
