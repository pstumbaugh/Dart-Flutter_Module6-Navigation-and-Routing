import 'imports.dart';
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
        donutButton(context),
        goBackButton(context)
      ],
    ));
  }
}

//example of going back one
void goBackToAlpha(BuildContext context) {
  Navigator.of(context).pop();
}

void pushDonut(BuildContext context) {
  Navigator.of(context).pushNamed(Donut.routeName);
}

Widget textPlaceholder(BuildContext context) {
  return Text('Beta', style: Theme.of(context).textTheme.display4);
}

Widget backToAlpha(BuildContext context) {
  return RaisedButton(
    child: Text('Alpha'),
    onPressed: () {
      goBackToAlpha(context);
    },
  );
}

Widget donutButton(BuildContext context) {
  return RaisedButton(
    child: Text('Donut'),
    onPressed: () {
      pushDonut(context);
    },
  );
}
