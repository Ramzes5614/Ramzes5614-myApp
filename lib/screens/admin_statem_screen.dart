import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class AdminUnstrumentary extends StatefulWidget {
  @override
  _AdminUnstrumentaryState createState() => _AdminUnstrumentaryState();
}

class _AdminUnstrumentaryState extends State<AdminUnstrumentary> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(children: [
          Text('Будущий инструментарий для работы администратора'),
          Icon(EvaIcons.settings),
        ]));
  }
}
