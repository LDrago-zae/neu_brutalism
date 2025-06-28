import 'package:flutter/material.dart';

import 'chat_bubble.dart';
import 'msg_input_bar.dart';

// ✅ Chat Screen
class ChatScreen extends StatefulWidget {
  final String name;
  final String userProfileImage;

  const ChatScreen({
    super.key,
    required this.name,
    required this.userProfileImage,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfff9e4),
      body: Column(
        children: [
          // ✅ Custom App Bar
          Container(
            height: 120,
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
            decoration: const BoxDecoration(
              color: Color(0xffCEEE30),
              border: Border(
                bottom: BorderSide(color: Colors.black, width: 2),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Icon(Icons.arrow_back, size: 24, color: Colors.black),
                  ),
                ),
                const SizedBox(width: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    widget.userProfileImage,
                    width: 45,
                    height: 45,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        'Tap here for contact info',
                        style: TextStyle(fontSize: 11, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                const _NeuIconButton(icon: Icons.videocam_outlined),
                const SizedBox(width: 8),
                const _NeuIconButton(icon: Icons.call_outlined),
              ],
            ),
          ),

          // ✅ Chat Body
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                Center(child: Text("Today", style: TextStyle(color: Colors.grey))),
                SizedBox(height: 12),
                ChatBubble(
                  message: "Hey, How are you doing?\nHope good there?",
                  time: "11:43",
                  isMe: false,
                  profileImage: 'assets/icons/spicon.png',
                ),
                SizedBox(height: 12),
                ChatBubble(
                  message: "Hey, All good here 😎",
                  time: "11:43",
                  isMe: true,
                ),
                SizedBox(height: 12),
                ChatBubble(
                  message: "Check out my new Neubrutalism UI Redesign of WhatsApp.",
                  time: "11:43",
                  isMe: false,
                  profileImage: 'assets/icons/spicon.png',
                ),
                SizedBox(height: 12),
                ChatBubble(
                  message: "That is Amazing Man,\nGood Try.",
                  time: "11:43",
                  isMe: true,
                ),
                SizedBox(height: 12),
                ChatBubble(
                  message: "Thank you so much.",
                  time: "11:43",
                  isMe: false,
                  profileImage: 'assets/icons/spicon.png',
                ),
              ],
            ),
          ),

          // ✅ Input Bar
          buildInputBar(),
        ],
      ),
    );
  }
}

// ✅ Neumorphic Icon Button
class _NeuIconButton extends StatelessWidget {
  final IconData icon;
  const _NeuIconButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Icon(icon, size: 20, color: Colors.black),
    );
  }
}
