import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
    );
  }
}