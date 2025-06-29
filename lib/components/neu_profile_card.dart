// lib/components/neu_brutal_profile_card.dart
import 'package:flutter/material.dart';
import '../models/character_profile_model.dart'; // Adjust path if needed

class NeuBrutalProfileCard extends StatelessWidget {
  final CharacterProfile profile;

  const NeuBrutalProfileCard({super.key, required this.profile});

  // --- Style Constants ---
  static const Color cardBackgroundColor = Color(0xFFFFF9E4); // Creamy off-white
  static const Color primaryAccentColor = Color(0xFFCEEE30); // Hades lime green (example)
  static const Color borderColor = Colors.black;
  static const double borderWidth = 3.5;
  static const Color shadowColor = Colors.black;
  static const Offset shadowOffset = Offset(5, 5); // Prominent shadow

  @override
  Widget build(BuildContext context) {
    return Dialog( // Or use as a direct widget in a Scaffold
      backgroundColor: Colors.transparent, // Make dialog background transparent
      insetPadding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(3), // Padding for the "double border" effect
        decoration: BoxDecoration(
          color: borderColor, // Outer border color
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: shadowColor,
              offset: shadowOffset,
              blurRadius: 0, // Hard shadow
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7), // Inner content slightly rounded
          child: Container(// Adjust height as needed
            width: MediaQuery.of(context).size.width * 0.78, // Adjust width as needed
            decoration: BoxDecoration(
              color: cardBackgroundColor,
              border: Border.all(color: borderColor, width: borderWidth / 2), // Inner border
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Important for Dialogs
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildHeader(),
                _buildBannerImage(),
                _buildAvatarAndTitleSection(),
                _buildDetailsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: cardBackgroundColor, // Or primaryAccentColor for a bolder header
        border: Border(bottom: BorderSide(color: borderColor, width: borderWidth)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            profile.name.toUpperCase(),
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w900, // Extra bold
              color: borderColor,
              letterSpacing: 1.5,
            ),
          ),
          const Icon(Icons.arrow_drop_down, color: borderColor, size: 30),
        ],
      ),
    );
  }

  Widget _buildBannerImage() {
    return Container(
      height: 150, // Adjust height as needed
      decoration: BoxDecoration(
        border: const Border(bottom: BorderSide(color: borderColor, width: borderWidth)),
        image: DecorationImage(
          image: AssetImage(profile.bannerImagePath),
          fit: BoxFit.cover,
          // Add a color filter for a more stylized look if desired
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
        ),
      ),
      // If you want a slight inner shadow or border on the image itself:
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.5), width: 1),
        ),
      ),
    );
  }

  Widget _buildAvatarAndTitleSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        color: cardBackgroundColor, // Match card background
        border: Border(bottom: BorderSide(color: borderColor, width: borderWidth)),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              // Divider Line behind avatar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: borderWidth,
                  color: borderColor,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: borderColor, width: borderWidth),
                  boxShadow: const [
                    BoxShadow( // Shadow for the avatar itself for pop
                      color: shadowColor,
                      offset: Offset(3,3),
                      blurRadius: 0,
                    )
                  ],
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: cardBackgroundColor, // To hide line behind image
                  child: CircleAvatar(
                    radius: 48, // Slightly smaller for border effect
                    backgroundImage: AssetImage(profile.avatarImagePath),
                    onBackgroundImageError: (e,s) { /* Handle error */ },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            profile.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: borderColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "“${profile.quote}”",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.italic,
              color: borderColor.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailsSection() {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDetailItem("Abilities", profile.abilities.join(", ")),
          _buildDetailItem("Hobbies", profile.hobbies.join(", ")),
          _buildDetailItem("Fighting Style", profile.fightingStyle),
          _buildDetailItem("Favorite Weapon", profile.favoriteWeapon),
        ],
      ),
    );
  }

  Widget _buildDetailItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column( // Use Column to stack label and value if value is long
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label:",
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800, // Bold label
              color: borderColor,
            ),
          ),
          const SizedBox(width: 4, height: 2), // For spacing
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              color: borderColor.withOpacity(0.9),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}