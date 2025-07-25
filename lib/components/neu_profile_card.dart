import 'package:flutter/material.dart';
import '../models/character_profile_model.dart';

class NeuBrutalProfileCard extends StatefulWidget {
  final CharacterProfile profile;

  const NeuBrutalProfileCard({super.key, required this.profile});

  @override
  State<NeuBrutalProfileCard> createState() => _NeuBrutalProfileCardState();
}

class _NeuBrutalProfileCardState extends State<NeuBrutalProfileCard> {
  bool showDetails = false;

  // Constants
  static const Color cardBackgroundColor = Color(0xFFFFF9E4);
  static const Color primaryAccentColor = Color(0xFFCEEE30);
  static const Color borderColor = Colors.black;
  static const double borderWidth = 3.5;
  static const Color shadowColor = Colors.black;
  static const Offset shadowOffset = Offset(5, 5);

  @override
  Widget build(BuildContext context) {
    final profile = widget.profile;

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
                  _buildHeader(profile),
                  _buildBannerImage(profile),
                  _buildAvatarAndTitleSection(profile),
                  _buildToggleArrow(),
                  AnimatedCrossFade(
                    firstChild: const SizedBox.shrink(),
                    secondChild: _buildDetailsSection(profile),
                    crossFadeState: showDetails ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                    duration: const Duration(milliseconds: 300),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(CharacterProfile profile) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: cardBackgroundColor,
        border: Border(bottom: BorderSide(color: borderColor, width: borderWidth)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              profile.name.toUpperCase(),
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w900,
                color: borderColor,
                letterSpacing: 1.5,
              ),
            ),
          ),
          // const Icon(Icons.close, color: borderColor, size: 28),
        ],
      ),
    );
  }

  Widget _buildBannerImage(CharacterProfile profile) {
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

  Widget _buildAvatarAndTitleSection(CharacterProfile profile) {
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
                    onBackgroundImageError: (e, s) {},
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

  Widget _buildToggleArrow() {
    return InkWell(
      onTap: () {
        setState(() => showDetails = !showDetails);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: cardBackgroundColor,
          border: Border(bottom: BorderSide(color: borderColor, width: borderWidth)),
        ),
        child: Icon(
          showDetails ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
          size: 30,
          color: borderColor,
        ),
      ),
    );
  }

  Widget _buildDetailsSection(CharacterProfile profile) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
      decoration: const BoxDecoration(
        color: cardBackgroundColor,
      ),
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
