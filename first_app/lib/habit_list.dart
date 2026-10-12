import 'dart:ui';
import 'package:flutter/material.dart';

class HabitList extends StatelessWidget {
  const HabitList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: 24),
        Text('Читать 30 минут', style: TextStyle(color: Colors.white)),
        Text('Зарядка', style: TextStyle(color: Colors.white)),
        Text('Drink water', style: TextStyle(color: Colors.white)),
      ],
    );
  }
}