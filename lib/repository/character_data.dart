import '../models/character_profile_model.dart';

Map<String, CharacterProfile> characterProfiles = {
  "Hades": CharacterProfile(
    name: "HADES",
    title: "Lord of the Underworld",
    quote: "Keeper of Souls, Master Strategist",
    bannerImagePath: "assets/icons/header.jpg",
    avatarImagePath: "assets/icons/hades.jpg",
    abilities: ["Soul Manipulation", "Shadow Step", "Summon Undead"],
    hobbies: ["Chess with Shades", "Judging Souls", "Archaeology"],
    fightingStyle: "Tactical ambush & crowd control",
    favoriteWeapon: "Gigaros, his Bident",
  ),

  "Zagreus": CharacterProfile(
    name: "ZAGREUS",
    title: "Prince of the Underworld",
    quote: "Blood and Darkness!",
    bannerImagePath: "assets/icons/header.jpg",
    avatarImagePath: "assets/icons/zag.jpg",
    abilities: ["Stygian Blade Aspects", "Dash Strike", "Divine Boons"],
    hobbies: ["Escaping", "Chatting with Shades", "Petting Cerberus"],
    fightingStyle: "Fast and adaptive",
    favoriteWeapon: "Stygius, the Stygian Blade",
  ),

  "Nyx": CharacterProfile(
    name: "NYX",
    title: "Night Incarnate",
    quote: "From darkness, we emerge.",
    bannerImagePath: "assets/icons/header.jpg",
    avatarImagePath: "assets/icons/nyx.jpg",
    abilities: ["Night Veil", "Shadow Guidance", "Dream Whisper"],
    hobbies: ["Watching over Zagreus", "Council with Chthonic Gods", "Dream interpretation"],
    fightingStyle: "Supportive and ethereal",
    favoriteWeapon: "Shadow Sigils",
  ),

  "Hypnos": CharacterProfile(
    name: "HYPNOS",
    title: "God of Sleep",
    quote: "Oh hey... you died again!",
    bannerImagePath: "assets/icons/header.jpg",
    avatarImagePath: "assets/icons/hyp.webp",  // Keeping your exact filename
    abilities: ["Sleep Aura", "Mind Fog", "Dream Entry"],
    hobbies: ["Napping", "Annoying Zagreus", "Tracking Death Counts"],
    fightingStyle: "Non-combative, comic relief",
    favoriteWeapon: "Pillow of Eternal Slumber",
  ),

  "Achilles": CharacterProfile(
    name: "ACHILLES",
    title: "Hero of the Greeks",
    quote: "Through discipline, we prevail.",
    bannerImagePath: "assets/icons/header.jpg",
    avatarImagePath: "assets/icons/ach.jpg",
    abilities: ["Phalanx Charge", "Shield Slam", "Tactical Roll"],
    hobbies: ["Training Zagreus", "Reminiscing about Patroclus", "Writing poetry"],
    fightingStyle: "Defensive, counter-attacks",
    favoriteWeapon: "Ancient Shield",
  ),

  "Dusa": CharacterProfile(
    name: "DUSA",
    title: "Gorgon Housekeeper",
    quote: "Oh! H-hi Lord Zagreus!",
    bannerImagePath: "assets/icons/header.jpg",
    avatarImagePath: "assets/icons/dusa.jpg",
    abilities: ["High-Speed Cleaning", "Sonic Fluster", "Gorgon Stare"],
    hobbies: ["Cleaning the House of Hades", "Blushing", "Floating around"],
    fightingStyle: "Non-combatant, evasive",
    favoriteWeapon: "Feather Duster",
  ),

  "Megaera": CharacterProfile(
    name: "MEGAERA",
    title: "Fury Sister",
    quote: "You won't get past me again.",
    bannerImagePath: "assets/icons/header.jpg",
    avatarImagePath: "assets/icons/meg.webp",
    abilities: ["Lash Flurry", "Shadow Dash", "Punishment Call"],
    hobbies: ["Hunting Zagreus", "Training with Furies", "Maintaining Order"],
    fightingStyle: "Fast, punishing attacks",
    favoriteWeapon: "Whip of Pain",
  ),

  "Thanatos": CharacterProfile(
    name: "THANATOS",
    title: "God of Death",
    quote: "Death is inevitable.",
    bannerImagePath: "assets/icons/header.jpg",
    avatarImagePath: "assets/icons/than.png",
    abilities: ["Soul Reap", "Instant Death Slash", "Teleport Strike"],
    hobbies: ["Collecting Souls", "Dueling Zagreus", "Brooding"],
    fightingStyle: "Quick, high burst damage",
    favoriteWeapon: "Scythe of Silence",
  ),
};
