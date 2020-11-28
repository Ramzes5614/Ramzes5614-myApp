import 'dart:async';

import 'dart:ffi';

enum NavBarItem { DISCUSSES, REGISTR, NEW_STATEM, CHATS, PROFILE }

class BottomNavBarBloc {
  final StreamController<NavBarItem> _navBarController =
      StreamController<NavBarItem>.broadcast();

  NavBarItem defaultItem = NavBarItem.DISCUSSES;
  Stream<NavBarItem> get itemStream => _navBarController.stream;

  void pickItem(int i) {
    switch (i) {
      case 0:
        _navBarController.sink.add(NavBarItem.DISCUSSES);
        break;
      case 1:
        _navBarController.sink.add(NavBarItem.REGISTR);
        break;
      case 2:
        _navBarController.sink.add(NavBarItem.NEW_STATEM);
        break;
      case 3:
        _navBarController.sink.add(NavBarItem.CHATS);
        break;
      case 4:
        _navBarController.sink.add(NavBarItem.PROFILE);
        break;
      /*case 5:
        _navBarController.sink.add(NavBarItem.DISCUSS);
        break;*/
    }
  }

  close() {
    _navBarController?.close();
  }
}

final bottomNavBarBloc = BottomNavBarBloc();
