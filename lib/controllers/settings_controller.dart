import '../models/settings_item_model.dart';
import 'package:flutter/material.dart';

class SettingsController {
  static List<SettingsItemModel> getSettings() {
    return [
      SettingsItemModel(title: 'Starred Messages', icon: Icons.star, color: Colors.orange),
      SettingsItemModel(title: 'WhatsApp Web/Desktop', icon: Icons.laptop_mac, color: Colors.teal),
      SettingsItemModel(title: 'Account', icon: Icons.key, color: Colors.blue),
      SettingsItemModel(title: 'Chats', icon: Icons.chat, color: Colors.green),
      SettingsItemModel(title: 'Notifications', icon: Icons.notifications, color: Colors.red),
      SettingsItemModel(title: 'Data and Storage Usage', icon: Icons.swap_vert, color: Colors.lightGreen),
      SettingsItemModel(title: 'Help', icon: Icons.info, color: Colors.blueAccent),
      SettingsItemModel(title: 'Tell a Friend', icon: Icons.favorite, color: Colors.pink),
    ];
  }
}
