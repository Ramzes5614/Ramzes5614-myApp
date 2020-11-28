import 'package:app/main_window.dart';
import 'package:app/models/discuss_model.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:app/utils/constants.dart';
import 'package:app/widgets/likes_num_widget.dart';
import 'package:app/widgets/comment_widget.dart';

class Discuss extends StatefulWidget {
  Discuss({@required this.topic});
  final Topic topic;
  @override
  _DiscussState createState() => _DiscussState();
}

class _DiscussState extends State<Discuss> {
  Icon settingsIcon = Icon(
    EvaIcons.settings2Outline,
    size: 40.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Welcome',
              style: kAppBarTitleTextStyle,
            ),
            SizedBox(
              width: 100.0,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: settingsIcon,
            )
          ],
        ),
        backgroundColor: kAppBarColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 150,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.topic.title,
                      style: TextStyle(
                        color: Color(0xFF555758),
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      widget.topic.text,
                      style: kSimpleTextStyleDark,
                    ),
                    LikesNumWidget(
                      likes: widget.topic.liks,
                      comments: widget.topic.commentsNum,
                    ),
                  ],
                ),
              ),
              /*Container(
                child: Expanded(
                  child: GridView.builder(
                    itemCount: topicsList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 2.0,
                      childAspectRatio: 2.0,
                    ),
                    itemBuilder: (context, index) {
                      return CommentWidget(
                        comment: widget.topic.comments[index],
                      );
                    },
                  ),
                ),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
