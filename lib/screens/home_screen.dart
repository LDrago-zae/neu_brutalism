import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neu_brutalism/components/chat_tile.dart';
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
            // Top Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Edit',
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF51AEB5),
                  ),
                ),
                Row(
                  children: [
                    NeuIconButton(
                      offset: Offset(0,3),
                      buttonWidth: 50,
                      buttonColor: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      icon: const Icon(Icons.camera_alt_outlined),
                      enableAnimation: false,
                    ),
                    const SizedBox(width: 10),
                    NeuIconButton(
                      offset: Offset(0,3),
                      buttonWidth: 50,
                      buttonColor: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      icon: const Icon(Icons.chat_outlined),
                      enableAnimation: false,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Chats Title
            Text(
              'Chats',
              style: GoogleFonts.inter(
                fontSize: 35,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 25),

            // Messages and New Group
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Messages',
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF51AEB5),
                  ),
                ),
                Text(
                  'New Group',
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF51AEB5),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // List of ChatTiles
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                // Replace with actual list length if dynamic
                itemBuilder: (context, index) {
                  return ChatTile(
                    imagePath: 'assets/icons/spicon.png',
                    name: 'Alex',
                    message: 'This is a sample message from contact',
                    date: '12:00 PM',
                    isRead: true,
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
