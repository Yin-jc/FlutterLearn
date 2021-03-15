import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<CountState> buildEffect() {
  return combineEffects(<Object, Effect<CountState>>{
    // CountAction.increase: _onIncrease,
  });
}

/*void _onIncrease(Action action, Context<CountState> ctx) {
  int count = ctx.state.count + 1;
  ctx.dispatch(CountActionCreator.updateCount(count));
}*/
