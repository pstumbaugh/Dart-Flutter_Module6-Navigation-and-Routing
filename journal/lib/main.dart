import 'imports.dart';
import 'alpha.dart';
import 'beta.dart';
import 'donut.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final routes = {
    Alpha.routeName: (context) => Alpha(), // '/' denotes initial router (home)
    Beta.routeName: (context) => Beta(),
    Donut.routeName: (context) => Donut()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Journal',
      theme: ThemeData.dark(),
      routes: routes,
    );
  }
}

void popBack(BuildContext context) {
  Navigator.of(context).pop();
}

Widget goBackButton(BuildContext context) {
  return RaisedButton(
    child: Text('Go Back'),
    onPressed: () {
      popBack(context);
    },
  );
}
