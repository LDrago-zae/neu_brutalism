class ChatModel {
  final String name;
  final String message;
  final String date;
  final String imagePath;
  final bool isRead;

  ChatModel({
    required this.name,
    required this.message,
    required this.date,
    required this.imagePath,
    this.isRead = false,
  });
}
