import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BioExpandable extends StatefulWidget {
  final String bio;
  final TextStyle textStyle;

  const BioExpandable({
    super.key,
    required this.bio,
    required this.textStyle,
  });

  @override
  BioExpandableState createState() => BioExpandableState();
}

class BioExpandableState extends State<BioExpandable> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final showSeeMore = widget.bio.length > 100;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: isExpanded ? widget.bio : _getTrimmedBio(widget.bio, 100),
                style: widget.textStyle,
                children: showSeeMore
                    ? [
                        TextSpan(
                          text: isExpanded ? " See Less" : " See More",
                          style: TextStyles.font12regular.copyWith(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              setState(() {
                                isExpanded = !isExpanded;
                              });
                            },
                        ),
                      ]
                    : [],
              ),
              maxLines: isExpanded ? null : 4, 
              overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
          ],
        );
      },
    );
  }

  String _getTrimmedBio(String bio, int maxLength) {
    if (bio.length <= maxLength) {
      return bio;
    }
    return "${bio.substring(0, maxLength).trim()}...";
  }
}