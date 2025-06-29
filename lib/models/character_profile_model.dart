// lib/models/character_profile_model.dart
class CharacterProfile {
  final String name; // e.g., "HADES"
  final String title; // e.g., "Hades the Underworld Lord"
  final String quote; // e.g., "Keeper of Souls, Master Strategist"
  final String bannerImagePath; // Path to the large banner image
  final String avatarImagePath; // Path to the circular avatar image
  final List<String> abilities;
  final List<String> hobbies;
  final String fightingStyle;
  final String favoriteWeapon;

  CharacterProfile({
    required this.name,
    required this.title,
    required this.quote,
    required this.bannerImagePath,
    required this.avatarImagePath,
    required this.abilities,
    required this.hobbies,
    required this.fightingStyle,
    required this.favoriteWeapon,
  });
}