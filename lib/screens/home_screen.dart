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
      backgroundColor: const Color(0xFFfff9e4),
      body: Padding(
        padding: const EdgeInsets.only(top: 35.0, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Edit',
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF51AEB5),
                  ),
                ),
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
                    const SizedBox(width: 10),
                    NeuIconButton(
                      buttonWidth: 50,
                      buttonColor: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      icon: const Icon(Icons.chat_outlined),
                      //onPressed: () => print("hii"),
                      enableAnimation: false,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Chats',
              style: GoogleFonts.inter(
                fontSize: 35,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Messages',
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF51AEB5),
                  ),
                ),
                Text('New Group' ,
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF51AEB5),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
