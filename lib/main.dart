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
/// 
/// Updated box will pass from GestureDetector to parent (StateManager) that
/// the box has been pressed.
/// Then the State in StateManager that has been changed is passed to UpdatedBox
/// and DataContent.
/// So because the State in StateManager has been changed, the build method
/// is StateManager is called, so UpdatedBox and DataContent is created again.
/// 
/// State managed by Parent probably has worse performance because there are extra
/// method is the child (UpdatedBox) to call to parent method.
/// and There are extra variable in DataContent as well.
/// 
/// Where State managed by Itself, the child call the method is Stateful widget directly.
/// and DataContent can use variable in Stateful itself. No need to make extra variable.
/// 
/// 
/// So basically using this approach where State managed by Parent vs
/// State managed by itself has no difference.
/// 
/// Use State Managed by parent only if you want to pass state to custom child widget.
/// 
/// The Parent is Stateful in both approach.