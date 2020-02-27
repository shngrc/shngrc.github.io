import 'package:shngrc/home_page.dart';
import 'package:shngrc/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';

import 'package:shngrc/config/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: Shngrc(),
    );
  }
}
class Shngrc extends StatelessWidget {
  const Shngrc({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shania Gracia',
      theme:ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lighTheme(context),
      home: HomePage(),
    );
  }
}