import 'package:flutter/material.dart';

import 'beta.dart';
import 'donut.dart';

class Beta extends StatelessWidget {
  static const routeName = 'beta';

  @override
  Widget build(BuildContext context) {
    final int receivedValue = ModalRoute.of(context).settings.arguments;
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textPlaceholder(context),
        backToAlpha(context),
        donutButton(context)
      ],
    ));
  }
}

void backToAlpha(BuildContext context) {
  Navigator.of(context).pop();
}

void pushDonut(BuildContext context) {
  Navigator.of(context).pushNamed(Donut.routeName);
}

Widget textPlaceholder(BuildContext context) {
  return Text('Alpha', style: Theme.of(context).textTheme.display4);
}
