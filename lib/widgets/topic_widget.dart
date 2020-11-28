import 'package:app/models/discuss_model.dart';
import 'package:app/screens/discuss_screen.dart';
import 'package:app/widgets/likes_num_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/utils/constants.dart';

class TopicWidget extends StatelessWidget {
  const TopicWidget({
    this.topic,
    Key key,
  }) : super(key: key);
  final Topic topic;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          color: Colors.grey.shade300),
      child: GestureDetector(
        onTap: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Discuss(
            topic: topic,
          );
        })),
        child: Container(
            child: Column(children: [
          Text(
            topic.title,
            style: TextStyle(color: Colors.black, fontSize: 20.0),
          ),
          Text(topic.text, style: TextStyle(fontSize: 15)),
          SizedBox(
            height: 10.0,
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: LikesNumWidget(
                likes: topic.liks,
                comments: topic.commentsNum,
              ))
        ])),
      ),
    );
  }
}
