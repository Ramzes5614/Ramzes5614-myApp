import 'dart:io';
import 'package:app/bloc/bottom_navigator_bar.dart';
import 'package:app/screens/discuss_screen.dart';
import 'package:app/utils/constants.dart';
import 'package:app/widgets/topic_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/models/discuss_model.dart';
import 'package:app/widgets/likes_num_widget.dart';
import 'package:app/bloc/discusses_navigation_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

/*DiscussNavigationBloc _discussNavigationBloc = DiscussNavigationBloc();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        initialData: _discussNavigationBloc.defName,
        stream: _discussNavigationBloc.stream,
        builder: (context, AsyncSnapshot<DiscussScreenStates> snapshot) {
          switch (snapshot.data) {
            case DiscussScreenStates.Discuss:
              break;
            case DiscussScreenStates.Loading:
              loading();
              sleep(Duration(seconds: 3));
              _discussNavigationBloc.getAnyKey(DiscussScreenStates.Discusses)
              break;
            case DiscussScreenStates.Discusses:
              DiscussesWidget();
              break;
          }
        });
  }
}

Widget loading() {
  return SpinKitCircle(
    size: 35.0,
    color: Colors.grey,
  );
}*/

class Discusses extends StatefulWidget {
  @override
  _DiscussesState createState() => _DiscussesState();
}

class _DiscussesState extends State<Discusses> {
  @override
  Widget build(BuildContext context) {
    return PrimaryScrollController(
        controller: ScrollController(initialScrollOffset: 1.0),
        child: GridView.builder(
            itemCount: topicsList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 2.0,
              childAspectRatio: 2.0,
            ),
            itemBuilder: (_, index) {
              return Opacity(
                opacity: 0.9,
                child: TopicWidget(
                  topic: topicsList[index],
                ),
              );
            }));
  }
}

/*
class DiscussesWidget extends StatelessWidget {
  const DiscussesWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            itemCount: topicsList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 2.0,
              childAspectRatio: 2.0,
            ),
            itemBuilder: (_, index) {
              return Opacity(
                opacity: 0.9,
                child: Container(
                    padding: EdgeInsets.only(top: 5.0),
                    //color: kTopicCotainerColor,
                    child: ListTile(
                        onTap: () => Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Discuss(
                                topic: topicsList[index],
                              );
                            })),
                        tileColor: kTopicCotainerColor,
                        title: Text(topicsList[index].title),
                        subtitle: Column(children: [
                          Text(topicsList[index].text),
                          LikesNumWidget(
                            likes: topicsList[index].liks,
                            comments: topicsList[index].commentsNum,
                          )
                        ]))),
              );
            }));
  }
}
*/
