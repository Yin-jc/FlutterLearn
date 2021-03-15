import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FirstState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("FirstPage"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("下方数据是SecondPage页面传递过来的:"),
          Text(state.msg)
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.message),
      onPressed: () {
        dispatch(FirstActionCreator.toSecond());
      },
    ),
  );
}
