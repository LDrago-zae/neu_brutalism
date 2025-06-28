
import '../models/chat_model.dart';

class ChatData {
  static List<ChatModel> getChats() {
    return [
      ChatModel(
        name: "Zagreus",
        message: "Right, let's try this again. Father won't know what hit him!",
          imagePath: 'assets/icons/zag.jpg', // Replace with your image path
          date: '5m ago',
        isRead: true,
      ),
      ChatModel(
        name: "Hades",
        message: "Boy! You dare defy me still? Return to your chambers at once.",
        imagePath: 'assets/icons/hades.jpg',
        date: "10m ago",
        isRead: true,
      ),
      ChatModel(
        name: "Nyx",
        message: "Zagreus, my child. Be careful on your journey. And do try to stay out of too much trouble.",
        imagePath: 'assets/icons/nyx.jpg',
        date: "30m ago",
        isRead: true,
      ),
      ChatModel(
        name: "Megaera",
        message: "Don't think this changes anything, Zag. I'll still be waiting for you.",
        imagePath: 'assets/icons/meg.webp',
        date: "1h ago",
        isRead: false,
      ),
      ChatModel(
        name: "Thanatos",
        message: "Try not to die too often, alright? It makes my job harder.",
        imagePath: 'assets/icons/than.png',
        date: "2h ago",
        isRead: true,
      ),
      ChatModel(
        name: "Hypnos",
        message: "Zzzzz... Oh! Prince Zagreus! Welcome back... Did you... zzz... have a good nap?",
        imagePath: 'assets/icons/hyp.webp',
        date: "3h ago",
        isRead: true,
      ),
      ChatModel(
        name: "Achilles",
        message: "Stay sharp out there, lad. And remember what I taught you.",
        imagePath: 'assets/icons/ach.jpg',
        date: "4h ago",
        isRead: false,
      ),
      ChatModel(
        name: "Dusa",
        message: "Oh, Prince Zagreus! So sorry about the mess! I'll get that cleaned right up! *flustered noises*",
        imagePath: 'assets/icons/dusa.jpg',
        date: "5h ago",
        isRead: true,
      ),
    ];
  }
}