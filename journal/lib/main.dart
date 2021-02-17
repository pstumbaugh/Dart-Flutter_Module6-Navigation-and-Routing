import 'imports.dart';

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
