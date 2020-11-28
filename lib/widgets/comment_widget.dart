import 'package:app/models/discuss_model.dart';
import 'package:app/screens/discuss_screen.dart';
import 'package:app/widgets/likes_num_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/utils/constants.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    this.comment,
    Key key,
  }) : super(key: key);
  final Comment comment;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade500),
          borderRadius: BorderRadius.circular(14.0),
          color: Colors.grey.shade300),
      child: GestureDetector(
        child: Container(
            child: ListTile(
                title: Text(
                  comment.authorId.toString(),
                ),
                subtitle: Text(comment.text, style: kCommentTextStyle))),
      ),
    );
  }
}
