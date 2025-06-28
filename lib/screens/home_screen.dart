import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neu_brutalism/components/chat_tile.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

import '../models/chat_model.dart';
import '../repository/chat_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
final List<ChatModel> chatList = ChatData.getChats();
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfff9e4),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF51AEB5),
                    ),
                  ),
                  Row(
                    children: [
                      NeuIconButton(
                        offset: const Offset(0, 3),
                        buttonWidth: 50,
                        buttonColor: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        icon: const Icon(Icons.camera_alt_outlined),
                        enableAnimation: false,
                      ),
                      const SizedBox(width: 10),
                      NeuIconButton(
                        offset: const Offset(0, 3),
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
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF51AEB5),
                    ),
                  ),
                  Text(
                    'New Group',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF51AEB5),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Chat tiles (simulating dynamic list)
              ...chatList.map((chat) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: ChatTile(
                    imagePath: chat.imagePath,
                    name: chat.name,
                    message: chat.message,
                    date: chat.date,
                    isRead: chat.isRead,
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
