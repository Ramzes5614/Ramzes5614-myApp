import 'package:app/bloc/user_bloc.dart';
import 'package:app/models/user_model.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: FloatingActionButton(
      onPressed: () => userControllerBloc.pickItem(UserType.NONAUTH),
    ));
  }
}
