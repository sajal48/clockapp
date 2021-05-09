import 'package:flutter/material.dart';

class PageChooser extends ChangeNotifier {
  int index;
  PageChooser({
    @required this.index,
  });

  get getIndex {
    return this.index;
  }

  void setIndex(int i) {
    this.index = i;
    notifyListeners();
  }

  PageState getPage() {
    switch (index) {
      case 0:
        return PageState.Clock;
        break;
      case 1:
        return PageState.Alarm;
        break;
      case 2:
        return PageState.Timer;
        break;
      case 3:
        return PageState.StopWatch;
        break;
      default:
        return PageState.Clock;
    }
  }
}

enum PageState { Clock, Alarm, Timer, StopWatch }
