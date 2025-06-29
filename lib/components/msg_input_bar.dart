import 'package:flutter/material.dart';

Widget buildInputBar() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
    decoration: const BoxDecoration(
      color: Color(0xffCEEE30),
      border: Border(top: BorderSide(color: Colors.black, width: 2)),
    ),
    child: Row(
      children: [
        const Icon(Icons.add, size: 26),
        const SizedBox(width: 8),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.black, width: 1.5),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Type a message",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        const Icon(Icons.emoji_emotions_outlined),
        const SizedBox(width: 8),
        const Icon(Icons.camera_alt_outlined),
        const SizedBox(width: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.all(8),
          child: const Icon(Icons.mic, color: Colors.white, size: 18),
        ),
      ],
    ),
  );
}
