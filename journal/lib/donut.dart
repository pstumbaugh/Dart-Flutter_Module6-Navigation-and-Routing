import 'imports.dart';
import 'beta.dart';
import 'alpha.dart';

class Donut extends StatelessWidget {
  static const routeName = 'donut';

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textPlaceholder(context),
        alphaButton(context),
        betaButton(context),
        goBackButton(context)
      ],
    ));
  }
}

void pushAlpha(BuildContext context) {
  Navigator.of(context).pushNamed(Alpha.routeName);
}

void pushBeta(BuildContext context) {
  Navigator.of(context).pushNamed(Beta.routeName);
}

Widget textPlaceholder(BuildContext context) {
  return Text('Donut', style: Theme.of(context).textTheme.display4);
}

Widget alphaButton(BuildContext context) {
  return RaisedButton(
    child: Text('Alpha'),
    onPressed: () {
      pushAlpha(context);
    },
  );
}

Widget betaButton(BuildContext context) {
  return RaisedButton(
    child: Text('Beta'),
    onPressed: () {
      pushBeta(context);
    },
  );
}
