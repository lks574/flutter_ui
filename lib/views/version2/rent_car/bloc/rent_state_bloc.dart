import 'dart:async';
import 'state_provider.dart';

class StateBloc {
  StreamController animationController = StreamController();
  final StateProvider provider = StateProvider();

  Stream get animationStatus => animationController.stream;

  void toggleAnimation() {
    provider.toggleAnimationValue();
    animationController.sink.add(provider.isAnimating);
  }

  void dispose() {
    animationController.close();
  }
}

final stateBloc = StateBloc();