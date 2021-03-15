import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<FirstState> buildEffect() {
  return combineEffects(<Object, Effect<FirstState>>{
    FirstAction.toSecond: _toSecond,
  });
}

void _toSecond(Action action, Context<FirstState> ctx) async {
  var result = await Navigator.of(ctx.context).pushNamed("SecondPage", arguments: {"firstValue" : FirstState.fixedMsg});
  ctx.dispatch(FirstActionCreator.updateMsg((result as Map) ["secondValue"]));
}

