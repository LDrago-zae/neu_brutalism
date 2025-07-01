import 'package:flutter/material.dart';
import 'package:neu_brutalism/screens/settings_screen.dart';

class NeuNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const NeuNav({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.095,
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
        color: const Color(0xffCEEE30),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildIcon(context, 0, Icons.chat_bubble_outline, Icons.chat, 'Chats'),
          _buildIcon(context, 1, Icons.timelapse_outlined, Icons.timelapse, 'Status'),
          _buildIcon(context, 2, Icons.group_outlined, Icons.group, 'Community'),
          _buildIcon(context, 3, Icons.call_outlined, Icons.call, 'Calls'),
          _buildIcon(context, 4, Icons.settings_outlined, Icons.settings, 'Settings'),
        ],
      ),
    );
  }

  Widget _buildIcon(BuildContext context, int index, IconData icon, IconData filledIcon, String label) {
    final isSelected = index == selectedIndex;

    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: isSelected
                ? BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 2),
            )
                : null,
            padding: const EdgeInsets.all(8),
            child: Icon(
              isSelected ? filledIcon : icon,
              color: Colors.black,
              size: 24,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
