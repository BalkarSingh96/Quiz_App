import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/kk.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.7,
          //   child: Image.asset(
          //     'assets/images/kk.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 20),
          const Text(
            'Learn Flutter the Fun Way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
              onPressed: startQuiz,
              // onPressed: () {
              //   startQuiz();
              // },
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(20)),
              icon: const Icon(Icons.arrow_circle_right_outlined),
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
