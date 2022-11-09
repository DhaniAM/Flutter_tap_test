import 'package:flutter/material.dart';

import 'state_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tap Test",
      theme: ThemeData(primarySwatch: Colors.red),
      home: const StateManager(),
    );
  }
}
/// State managed by parent (StateManager)


