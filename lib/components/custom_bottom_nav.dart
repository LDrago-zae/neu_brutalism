import 'package:flutter/material.dart';

class NeuNav extends StatefulWidget {
  const NeuNav({super.key});

  @override
  State<NeuNav> createState() => _NeuNavState();
}

class _NeuNavState extends State<NeuNav> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.095,
      width: MediaQuery.of(context).size.width * 0.9,
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
          _NavIcon(
            icon: Icons.chat_bubble_outline,
            filledIcon: Icons.chat,
            label: 'Chats',
            isSelected: selectedIndex == 0,
            onTap: () => onItemTapped(0),
          ),
          _NavIcon(
            icon: Icons.timelapse_outlined,
            filledIcon: Icons.timelapse,
            label: 'Status',
            isSelected: selectedIndex == 1,
            onTap: () => onItemTapped(1),
          ),
          _NavIcon(
            icon: Icons.group_outlined,
            filledIcon: Icons.group,
            label: 'Community',
            isSelected: selectedIndex == 2,
            onTap: () => onItemTapped(2),
          ),
          _NavIcon(
            icon: Icons.call_outlined,
            filledIcon: Icons.call,
            label: 'Calls',
            isSelected: selectedIndex == 3,
            onTap: () => onItemTapped(3),
          ),
          _NavIcon(
            icon: Icons.settings_outlined,
            filledIcon: Icons.settings,
            label: 'Settings',
            isSelected: selectedIndex == 4,
            onTap: () => onItemTapped(4),
          ),
        ],
      ),
    );
  }
}

class _NavIcon extends StatelessWidget {
  final IconData icon;
  final IconData filledIcon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavIcon({
    required this.icon,
    required this.filledIcon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
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
