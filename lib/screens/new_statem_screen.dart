import 'package:app/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:app/bloc/user_bloc.dart';

class NewStatem extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<NewStatem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        initialData: userControllerBloc.defaultItem,
        stream: userControllerBloc.itemStream,
        builder: (context, AsyncSnapshot<UserType> snapshot) {
          switch (snapshot.data) {
            case UserType.ADMIN:
              print('worker');
              return Container(
                alignment: Alignment.center,
                child: Text('Вы админ'),
              );
              break;
            case UserType.NONAUTH:
              return Container(
                alignment: Alignment.center,
                child: Text('Авторизуйтесь'),
              );
              break;
            case UserType.WORKER:
              return Container(
                alignment: Alignment.center,
                child: Text('Вы работник'),
              );
              break;
          }
        },
      ),
    );
  }
}
