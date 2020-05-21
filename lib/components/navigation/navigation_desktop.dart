import 'package:Portfolio/get_it/animation_get_it.dart';
import 'package:Portfolio/locator.dart';
import 'package:Portfolio/widgets/navigation_text.dart';
import 'package:flutter/material.dart';

class NavigationDesktop extends StatefulWidget {
  const NavigationDesktop({Key key}) : super(key: key);

  @override
  _NavigationDesktopState createState() => _NavigationDesktopState();
}

class _NavigationDesktopState extends State<NavigationDesktop> {
  final _animation = locator<AnimationGetIt>();

  @override
  void initState() {
    super.initState();
    _animation.generateNavigationKeys();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Spacer(),
        NavigationText(
          "Home",
          key: _animation.getNavigationKeys[0],
          delay: 0,
          index: 0,
        ),
        SizedBox(height: 10),
        NavigationText(
          "About",
          key: _animation.getNavigationKeys[1],
          delay: .2,
          index: 1,
        ),
        SizedBox(height: 10),
        NavigationText(
          "Projects",
          key: _animation.getNavigationKeys[2],
          delay: .4,
          index: 2,
        ),
        Spacer(),
      ],
    );
  }
}
