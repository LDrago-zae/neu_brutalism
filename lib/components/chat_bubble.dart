import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final String time;
  final bool isMe;
  final String? profileImage;

  const ChatBubble({
    super.key,
    required this.message,
    required this.time,
    required this.isMe,
    this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisAlignment:
        isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isMe && profileImage != null)
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(profileImage!),
              ),
            ),
          CustomPaint(
            painter: BubblePainter(isMe: isMe),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
              decoration: BoxDecoration(
                color: isMe ? const Color(0xffd1f7c4) : Colors.white,
                border: Border.all(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(message, style: const TextStyle(fontSize: 14)),
                  const SizedBox(height: 4),
                  Text(
                    time,
                    style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Custom bubble tail
class BubblePainter extends CustomPainter {
  final bool isMe;

  BubblePainter({required this.isMe});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    final path = Path();

    if (isMe) {
      // Tail on right
      path.moveTo(size.width - 10, size.height);
      path.lineTo(size.width, size.height + 10);
      path.lineTo(size.width - 2, size.height);
    } else {
      // Tail on left
      path.moveTo(10, size.height);
      path.lineTo(0, size.height + 10);
      path.lineTo(2, size.height);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
