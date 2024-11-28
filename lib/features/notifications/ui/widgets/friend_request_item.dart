import 'package:circle_sync/core/helpers/extensions.dart';
import 'package:circle_sync/core/helpers/spacing.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FriendRequestItem extends StatelessWidget {
  final String requestId;
  final String requesterName;
  final String? profileImage;
  final VoidCallback onAccept;
  final VoidCallback onDecline;

  const FriendRequestItem({
    super.key,
    required this.requestId,
    required this.requesterName,
    required this.profileImage,
    required this.onAccept,
    required this.onDecline,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
         context.pushNamed(
              Routes.userProfile,
              arguments: requestId,
            );
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 23.sp,
            backgroundImage: NetworkImage(
              profileImage ??
                  "https://static.vecteezy.com/system/resources/thumbnails/005/129/844/small/profile-user-icon-isolated-on-white-background-eps10-free-vector.jpg",
            ),
          ),
          horizontalSpace(15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.4,
                    child: Text(
                      requesterName,
                      style: TextStyles.font15semiBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  horizontalSpace(size.width * 0.05),
                  IconButton(
                      onPressed: () {
                        onAccept();
                      },
                      icon: Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 30.sp,
                      )),
                  horizontalSpace(10),
                  IconButton(
                      onPressed: () {
                        onDecline();
                      },
                      icon: Icon(Icons.close, color: Colors.red, size: 30.sp)),
                ],
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
