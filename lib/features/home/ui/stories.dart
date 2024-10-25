import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/features/home/ui/widgets/story_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h, // Set a height for the stories container
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          horizontalSpace(15),
          const StoryItem(userName: "Magd"),
          horizontalSpace(15),
          const StoryItem(
            storyImageUrl: "https://example.com/image1.jpg",
            profileImageUrl: "https://example.com/profile1.jpg",
            userName: "User1",
          ),
          horizontalSpace(15),
          const StoryItem(
            storyImageUrl:
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
            profileImageUrl:
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
            userName: "Magd",
          ),
          horizontalSpace(15),
          const StoryItem(
            storyImageUrl:
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
            profileImageUrl:
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
            userName: "Magd",
          ),
        ],
      ),
    );
  }
}