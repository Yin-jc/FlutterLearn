import 'package:fish_redux/fish_redux.dart';

class SecondState implements Cloneable<SecondState> {

  static const String fixedMsg = "\n我是SecondPage页面传递过来的数据：SecondValue";
  String msg;

  @override
  SecondState clone() {
    return SecondState()
      ..msg = msg;
  }
}

SecondState initState(Map<String, dynamic> args) {
  return SecondState()
    ..msg = args["firstValue"];
}
