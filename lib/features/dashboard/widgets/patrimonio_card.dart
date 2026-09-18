import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class PatrimonioCard extends StatelessWidget {
  final double value;

  const PatrimonioCard({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: AppColors.primary,

        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text(
            "Patrimônio Atual",

            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),

          const SizedBox(height: 10),

          Text(
            "R\$ ${value.toStringAsFixed(2)}",

            style: const TextStyle(
              color: Colors.white,

              fontSize: 32,

              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Valor total cadastrado",

            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
