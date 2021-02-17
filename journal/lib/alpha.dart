import 'package:flutter/material.dart';

import 'beta.dart';
import 'donut.dart';

class Alpha extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textPlaceholder(context),
        betaButton(context),
        donutButton(context)
      ],
    ));
  }
}

void pushBeta(BuildContext context) {
  Navigator.of(context).pushNamed(Beta.routeName, arguments: 42);
}

void pushDonut(BuildContext context) {
  Navigator.of(context).pushNamed(Donut.routeName);
}

Widget textPlaceholder(BuildContext context) {
  return Text('Alpha', style: Theme.of(context).textTheme.display4);
}
