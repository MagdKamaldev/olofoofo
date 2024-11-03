import 'package:circle_sync/core/themes/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class AreYouSureDialog extends StatelessWidget {
  final String title;
  final String content;
  final Function() onConfirm;

  const AreYouSureDialog({
    super.key,
    this.title = 'Delete Comment',
    this.content = 'Are you sure you want to delete this comment?',
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title,style: TextStyles.font18Semibold,),
      content: Text(content,style: TextStyles.font14Medium,),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel',style: TextStyles.font14Medium,),
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
        ),
        TextButton(
          child: Text('Delete', style: TextStyles.font14Medium.copyWith(color: Colors.red),),
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
            onConfirm(); 
          },
        ),
      ],
    );
  }
}