import 'dart:async';
import 'package:app/models/user_model.dart';
import 'package:rxdart/rxdart.dart';

class UserBloc {
  final BehaviorSubject<UserType> _userController = BehaviorSubject<UserType>();

  UserType defaultItem = UserType.ADMIN;
  Stream<UserType> get itemStream => _userController.stream;

  void pickItem(UserType user) {
    switch (user) {
      case UserType.ADMIN:
        _userController.sink.add(UserType.ADMIN);
        break;
      case UserType.NONAUTH:
        _userController.sink.add(UserType.NONAUTH);
        break;
      case UserType.WORKER:
        _userController.sink.add(UserType.WORKER);
        print('worker');
        break;
    }
  }

  close() {
    _userController?.close();
  }
}

final userControllerBloc = UserBloc();
