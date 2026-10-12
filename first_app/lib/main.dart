import 'dart:ui';
import 'package:flutter/material.dart';
import 'habit_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Habit Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6C5EC7),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Красивый тёмный градиент в стиле Apple
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0F0C29), // почти чёрный с фиолетовым
              Color(0xFF302B63),
              Color(0xFF24243E),
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
              child: Container(
                width: 420,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.12),
                    width: 1.2,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: _controller,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      cursorColor: const Color(0xFF9B8CFF),
                      decoration: InputDecoration(
                        hintText: 'Enter a new habit...',
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.35),
                          fontSize: 16,
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.06),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 16,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.12),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(
                            color: Color(0xFF9B8CFF),
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF6C5CE7),
                        ),
                        onPressed:(){}, 
                        child: Text('Add Habit'),
                      ),
                    ),

                    // SizedBox(width: 24),

                    const HabitList(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}