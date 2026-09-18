import 'package:flutter/material.dart';

class TypeSelector extends StatelessWidget {
  final String value;

  final Function(String) onChanged;

  const TypeSelector({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _button("Receita", "INCOME", Colors.green),

        const SizedBox(width: 8),

        _button("Despesa", "EXPENSE", Colors.red),

        const SizedBox(width: 8),

        _button("Transferência", "TRANSFER", Colors.blue),
      ],
    );
  }

  Widget _button(String text, String type, Color color) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: value == type ? color : Colors.grey.shade200,
        ),

        onPressed: () {
          onChanged(type);
        },

        child: Text(
          text,

          style: TextStyle(color: value == type ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
