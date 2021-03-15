import 'package:fish_redux/fish_redux.dart';

class FirstState implements Cloneable<FirstState> {

  static const String fixedMsg = "\n我是FirstPage页面传递过来的数据：FirstValue";
  String msg;

  @override
  FirstState clone() {
    return FirstState()
      ..msg = msg;
  }
}

FirstState initState(Map<String, dynamic> args) {
  return FirstState()
    ..msg = "\n暂无";
}
