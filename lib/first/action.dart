import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FirstAction { toSecond, updateMsg }

class FirstActionCreator {
  static Action toSecond() {
    return Action(FirstAction.toSecond);
  }

  static Action updateMsg(String msg) {
    return Action(FirstAction.updateMsg, payload: msg);
  }
}
