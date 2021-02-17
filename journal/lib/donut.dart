import 'imports.dart';

class Donut extends StatelessWidget {
  static const routeName = 'donut';

  @override
  Widget build(BuildContext context) {
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

void pushBeta(BuildContext context) {
  Navigator.of(context).pushNamed(Beta.routeName);
}

Widget textPlaceholder(BuildContext context) {
  return Text('Alpha', style: Theme.of(context).textTheme.display4);
}
