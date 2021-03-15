import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CountState> buildReducer() {
  return asReducer(
    <Object, Reducer<CountState>>{
      CountAction.updateCount: _onUpdateCount,
    },
  );
}

CountState _onUpdateCount(CountState state, Action action) {
  final CountState newState = state.clone();
  // newState..count = action.payload;
  newState..count = state.count + 1;
  return newState;
}
