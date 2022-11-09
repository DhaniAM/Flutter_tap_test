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
/// State managed by itself (StateManager contain all)
/// 
/// you may think,
/// [StateManager] is Stateful.
/// The box is Stateful
/// The data is Stateful
/// 
/// Atleast that's what you think, but actually the box (container) is Stateless
/// The data is also Stateless
/// 
/// Stateful controls the Stateless widget.
/// It tells / builds the Stateless widget when State in itself (Stateful widget)
/// changed, so Stateful is only used only to contain the State, the widget it builds
/// is Stateless, not Stateful.
/// 
/// Basically Stateful widget is a State Controller


