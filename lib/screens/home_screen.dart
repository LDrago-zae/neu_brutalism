import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfff9e4),
      body: Padding(
        padding: const EdgeInsets.only (top: 35.0, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Edit' , style: GoogleFonts.inter(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF51AEB5),
            ),),
            const SizedBox(height: 20),
            Row(
              children: [
                NeuIconButton(
                  buttonWidth: 50,
                  buttonColor: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  icon: const Icon(Icons.camera_alt_outlined),
                  //onPressed: () => print("hii"),
                  enableAnimation: false,
                ),
                SizedBox(width: 10,),
                NeuIconButton(
                  buttonWidth: 50,
                  buttonColor: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  icon: const Icon(Icons.chat_outlined),
                  //onPressed: () => print("hii"),
                  enableAnimation: false,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
