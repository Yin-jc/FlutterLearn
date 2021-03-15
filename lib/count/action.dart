import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CountAction { increase, updateCount }

class CountActionCreator {

  static Action countIncrease() {
    return Action(CountAction.increase);
  }

  /*static Action updateCount(int count) {
    return Action(CountAction.updateCount, payload: count);
  }*/

  static Action updateCount() {
    return Action(CountAction.updateCount);
  }
}
