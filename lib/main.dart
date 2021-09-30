import 'package:flutter/material.dart';
import 'package:todoy_flutter/screens/taskScreen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: TaskScreen(),
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.lightBlueAccent,
      textTheme: TextTheme(
        bodyText2: TextStyle(
          color: Colors.white
        )
      )
    ),
    );
  }
}
