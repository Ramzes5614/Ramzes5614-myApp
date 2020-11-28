import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class LikesNumWidget extends StatefulWidget {
  LikesNumWidget({this.likes, this.comments});
  final int likes;
  final int comments;
  @override
  State<StatefulWidget> createState() => _LikesNumWidgetState();
}

class _LikesNumWidgetState extends State<LikesNumWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(
            EvaIcons.heartOutline,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(widget.likes.toString()),
          SizedBox(
            width: 4.0,
          ),
          Icon(EvaIcons.messageSquareOutline),
          SizedBox(
            width: 4.0,
          ),
          Text(widget.comments.toString()),
        ],
      ),
    );
  }
}
