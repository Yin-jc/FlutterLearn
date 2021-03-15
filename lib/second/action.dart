import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SecondAction { backFirst }

class SecondActionCreator {
  static Action backFirst() {
    return Action(SecondAction.backFirst);
  }
}
