import 'package:flutter/material.dart';
import 'package:neu_brutalism/components/settings_tile.dart';
import '../controllers/settings_controller.dart';
import 'custom_bottom_nav.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsList = SettingsController.getSettings();

    return Scaffold(
      backgroundColor: const Color(0xFFfff9e4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFfff9e4),
        elevation: 0,
        centerTitle: true,
        title: const Text('Settings', style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 35),
            // Profile Tile (top section)
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: const Color(0xffCEEE30),
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 24,
                  backgroundImage: AssetImage('assets/icons/zag.jpg'), // Use your image
                ),
                title: const Text('Zagreus', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text('Passionate!!'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 14),
              ),
            ),
            // Settings Items
            ...settingsList.map((item) => SettingsTile(item: item)).toList(),

            const SizedBox(height: 24),
            const Center(
              child: Text("WhatsApp from Facebook", style: TextStyle(color: Colors.grey)),
            )
          ],
        ),
      ),
      bottomNavigationBar: const NeuNav(),
    );
  }
}
