/*import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

enum DiscussScreenStates { Loading, Discusses, Discuss }

class DiscussNavigationBloc {
  DiscussNavigationBloc();

  final _discussStreamController = BehaviorSubject<DiscussScreenStates>();
  DiscussScreenStates defName = DiscussScreenStates.Discusses;
  Stream<DiscussScreenStates> get stream => _discussStreamController.stream;

  void getAnyKey(DiscussScreenStates states) {
    switch (states) {
      case DiscussScreenStates.Discuss:
        _discussStreamController.sink.add(DiscussScreenStates.Discuss);
        break;
      case DiscussScreenStates.Discusses:
        _discussStreamController.sink.add(DiscussScreenStates.Discusses);
        break;
      case DiscussScreenStates.Loading:
        _discussStreamController.sink.add(DiscussScreenStates.Loading);
        break;
    }
  }

  void dispose() {
    _discussStreamController.close();
  }
}

/*//final _discussNavigationBloc = DiscussNavigationBloc();

class BodyState {
  BodyState();
  factory BodyState._loadingState() = BodyLoadingState;
  factory BodyState._discussesState() = BodyDiscussesState;
}

class BodyLoadingState extends BodyState {}

class BodyDiscussesState extends BodyState {}

class BodyRegistrState extends BodyState {}

class BodyDiscussState extends BodyState {}*/*/
