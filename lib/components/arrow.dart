import 'package:Portfolio/enums/arrow_pos.dart';
import 'package:Portfolio/provider/arrow_provider.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../extensions/hover.dart';

class Arrow extends StatelessWidget {
  const Arrow({
    Key key,
    this.angle,
    this.position,
  }) : super(key: key);

  final double angle;
  final ArrowPos position;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return SizedBox.fromSize(
      size: _size / 12,
      child: Transform.rotate(
        angle: angle,
        child: Consumer<ArrowProvider>(
          builder: (context, value, child) {
            return GestureDetector(
              onTap: () => value.onTap(position),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlareActor(
                  "assets/rive/bouncing_arrow.flr",
                  animation: value.getState(position),
                ),
              ),
            ).hover(onHover: () {}, onExit: () {});
          },
        ),
      ),
    );
  }
}
