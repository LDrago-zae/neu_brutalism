import 'package:flutter/material.dart';
import '../models/character_profile_model.dart';

class NeuBrutalProfileCard extends StatelessWidget {
  final CharacterProfile profile;

  const NeuBrutalProfileCard({super.key, required this.profile});

  // Style Constants
  static const Color cardBackgroundColor = Color(0xFFFFF9E4);
  static const Color primaryAccentColor = Color(0xFFCEEE30);
  static const Color borderColor = Colors.black;
  static const double borderWidth = 3.5;
  static const Color shadowColor = Colors.black;
  static const Offset shadowOffset = Offset(5, 5);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: borderColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: shadowColor,
              offset: shadowOffset,
              blurRadius: 0,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Container(
            constraints: BoxConstraints(
              minHeight: 300,
              maxHeight: MediaQuery.of(context).size.height * 0.85,
            ),
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
              color: cardBackgroundColor,
              border: Border.all(color: borderColor, width: borderWidth / 2),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: cardBackgroundColor,
        border: Border(bottom: BorderSide(color: borderColor, width: borderWidth)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            profile.name.toUpperCase(),
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w900,
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
      height: 150,
      decoration: BoxDecoration(
        border: const Border(bottom: BorderSide(color: borderColor, width: borderWidth)),
        image: DecorationImage(
          image: AssetImage(profile.bannerImagePath),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
        ),
      ),
    );
  }

  Widget _buildAvatarAndTitleSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        color: cardBackgroundColor,
        border: Border(bottom: BorderSide(color: borderColor, width: borderWidth)),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
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
                    BoxShadow(
                      color: shadowColor,
                      offset: Offset(3, 3),
                      blurRadius: 0,
                    )
                  ],
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: cardBackgroundColor,
                  child: CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage(profile.avatarImagePath),
                    onBackgroundImageError: (e, s) {
                      // Handle error
                    },
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label:",
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800,
              color: borderColor,
            ),
          ),
          const SizedBox(height: 2),
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
