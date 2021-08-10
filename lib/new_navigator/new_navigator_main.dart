import 'package:flutter/material.dart';
import 'new_navigator_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(child: NewNavigatorHomePage()),
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) return false;
          return true;
        },
      ),
    );
  }
}
