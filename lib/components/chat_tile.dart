import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String date;
  final String imagePath;
  final bool isRead;
  final VoidCallback? onTap;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.date,
    required this.imagePath,
    this.isRead = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0,),
        child: NeuContainer(
          borderRadius: BorderRadius.circular(5),
          width: double.infinity,
          color: Color(0xFFfff9e4),
          borderWidth: 2,
          // borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(12.0), // Add padding inside the container
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile image
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    imagePath,
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12),

                // Flexible content column
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name and date
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            date,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),

                      // Message row
                      Row(
                        children: [
                          Icon(
                            Icons.done_all,
                            size: 16,
                            color: isRead ? Colors.blue : Colors.grey,
                          ),
                          SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              message,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Trailing arrow
                SizedBox(width: 8),
                Center(child: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
