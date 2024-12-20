import 'package:first_app/pages/home.pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const App({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoMoon',
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(
        31,
        31,
        31,
        1.0,
      )),
      home: HomePage(),
    );
    // throw UnimplementedError();
  }
}
