import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String? storyImageUrl;
  final String? profileImageUrl;
  final String userName;

  const StoryItem({
    super.key,
    this.storyImageUrl,
    this.profileImageUrl,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            // Story Background Image or Placeholder with Black Border
            Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black, width: 1),
                color: storyImageUrl == null || storyImageUrl!.isEmpty
                    ? const Color(0xFFF2F2F2) // Placeholder color
                    : null,
                image: storyImageUrl != null && storyImageUrl!.isNotEmpty
                    ? DecorationImage(
                        image: NetworkImage(storyImageUrl!),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
            ),
            // Circular Profile Image or "+" Icon Overlay with Black Border, half outside
            Positioned(
              bottom: -24, // Half of the profile image will be outside
              child: CircleAvatar(
                radius: 25, // Increase to accommodate border
                backgroundColor: Colors.black, // Border color
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.white,
                  child: profileImageUrl == null || profileImageUrl!.isEmpty
                      ? const Icon(Icons.add, size: 24, color: Colors.black) // "+" Icon
                      : CircleAvatar(
                          radius: 24,
                          backgroundImage: NetworkImage(profileImageUrl!),
                        ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24), // Space for the profile image overflow
        // User Name Text
        Text(
          userName,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 1,
        ),
      ],
    );
  }
}