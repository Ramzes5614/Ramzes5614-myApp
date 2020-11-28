import 'package:app/screens/discuss_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'utils/constants.dart';
import 'bloc/bottom_navigator_bar.dart';
import 'utils/theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:app/bloc/bottom_navigator_bar.dart';
import 'package:app/screens/chats_screen.dart';
import 'package:app/screens/discusses_screen.dart';
import 'package:app/screens/new_statem_screen.dart';
import 'package:app/screens/profile._screen.dart';
import 'package:app/screens/registr_screen.dart';

class MainPage extends StatefulWidget {
  MainPage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome',
            style: kAppBarTitleTextStyle,
          ),
          backgroundColor: kAppBarColor,
        ),
        body: BodyElement(),
        bottomNavigationBar: ButtomBar());
  }
}

class ButtomBar extends StatelessWidget {
  const ButtomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bottomNavBarBloc.itemStream,
      initialData: bottomNavBarBloc.defaultItem,
      builder: (context, AsyncSnapshot<NavBarItem> snapshot) {
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[100], spreadRadius: 0, blurRadius: 2),
            ],
          ),
          child: ClipRRect(
            child: BottomNavigationBar(
              backgroundColor: basicLightTheme().backgroundColor,
              iconSize: 20,
              selectedItemColor: kSelectedButtomColor,
              unselectedItemColor: basicLightTheme().unselectedWidgetColor,
              unselectedFontSize: 9.0,
              selectedFontSize: 9.5,
              type: BottomNavigationBarType.shifting,
              showSelectedLabels: false,
              showUnselectedLabels: true,
              //fixedColor: kMainColorLight,
              currentIndex: snapshot.data.index,
              onTap: bottomNavBarBloc.pickItem,
              items: [
                //discuss
                BottomNavigationBarItem(
                  label: "",
                  icon: Icon(EvaIcons.peopleOutline),
                  activeIcon: Icon(EvaIcons.people),
                ),
                //registr
                BottomNavigationBarItem(
                  label: "",
                  icon: Icon(EvaIcons.bookOpenOutline),
                  activeIcon: Icon(EvaIcons.bookOpen),
                ),
                //new_statement
                BottomNavigationBarItem(
                  label: "",
                  icon: Icon(EvaIcons.plusSquareOutline),
                  activeIcon: Icon(EvaIcons.plusSquare),
                ),
                //chats
                BottomNavigationBarItem(
                  label: "",
                  icon: Icon(EvaIcons.paperPlaneOutline),
                  activeIcon: Icon(EvaIcons.paperPlane),
                ),
                //profile
                BottomNavigationBarItem(
                  label: "",
                  icon: Icon(EvaIcons.personOutline),
                  activeIcon: Icon(EvaIcons.person),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class BodyElement extends StatelessWidget {
  const BodyElement({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: StreamBuilder(
        stream: bottomNavBarBloc.itemStream,
        initialData: bottomNavBarBloc.defaultItem,
        builder: (context, AsyncSnapshot<NavBarItem> snapshot) {
          switch (snapshot.data) {
            case NavBarItem.DISCUSSES:
              return Discusses();
              break;
            case NavBarItem.REGISTR:
              return Registr();
              break;
            case NavBarItem.NEW_STATEM:
              return NewStatem();
              break;
            case NavBarItem.CHATS:
              return Chats();
              break;
            case NavBarItem.PROFILE:
              return Profile();
              break;
            /*case NavBarItem.DISCUSS:
              return Discuss(topic: ,);
              break;*/
          }
        },
      ),
    );
  }
}
