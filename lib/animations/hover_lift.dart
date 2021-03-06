import 'package:flutter/material.dart';

class HoverLift extends AnimatedWidget {
  HoverLift(
      {Key key, @required this.child, @required AnimationController controller})
      : super(key: key, listenable: controller);

  final Widget child;

  static final _liftUp = Tween<double>(begin: 0, end: -10);
  static final _scale = Tween<double>(begin: 1.0, end: 1.2);
  @override
  Widget build(BuildContext context) {
    final controller = listenable;
    return Transform.scale(
      scale: _scale.animate(controller).value,
      child: Transform.translate(
        offset: Offset(0, _liftUp.animate(controller).value),
        child: child,
      ),
    );
  }
}
