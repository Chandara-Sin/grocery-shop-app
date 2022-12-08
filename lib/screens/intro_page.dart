import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80, bottom: 40, top: 160),
            child: Image.asset('assets/images/avocado.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text("We deliver groceries at your doorstep",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                    fontSize: 36, fontWeight: FontWeight.bold)
                // TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Fresh items everydays",
            style: TextStyle(color: Colors.grey),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => {},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(24),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
