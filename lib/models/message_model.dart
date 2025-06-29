class MessageModel {
  final String message;
  final String time;
  final bool isMe;
  final String? profileImage;

  MessageModel({
    required this.message,
    required this.time,
    required this.isMe,
    this.profileImage,
  });
}
