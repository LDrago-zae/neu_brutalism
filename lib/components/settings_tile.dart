import 'package:flutter/material.dart';
import '../models/settings_item_model.dart';

class SettingsTile extends StatelessWidget {
  final SettingsItemModel item;

  const SettingsTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: item.color,
          child: Icon(item.icon, color: Colors.white),
        ),
        title: Text(item.title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 14),
      ),
    );
  }
}
