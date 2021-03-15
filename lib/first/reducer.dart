import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FirstState> buildReducer() {
  return asReducer(
    <Object, Reducer<FirstState>>{
      FirstAction.updateMsg: _updateMsg,
    },
  );
}

FirstState _updateMsg(FirstState state, Action action) {
  final FirstState newState = state.clone();
  newState..msg = action.payload;
  return newState;
}
