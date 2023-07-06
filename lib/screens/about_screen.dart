import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.info_outline),
            const SizedBox(
              height: 8,
            ),
            Text(
              'BookStore',
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.w900, fontSize: 30),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Version : 1.0',
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.w500, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
