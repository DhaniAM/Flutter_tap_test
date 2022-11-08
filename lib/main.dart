import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dhani",
      theme: ThemeData(primarySwatch: Colors.red),
      home: const StateManager(),
    );
  }
}

/// Parents
class StateManager extends StatefulWidget {
  const StateManager({super.key});

  @override
  State<StateManager> createState() => _StateManagerState();
}

class _StateManagerState extends State<StateManager> {
  bool isOn = true;
  int tapVal = 0;
  int tapDownVal = 0;
  int tapUpVal = 0;
  int tapCancelVal = 0;
  int doubleTapVal = 0;
  int doubleTapDownVal = 0;
  int doubleTapCancelVal = 0;
  int longTapVal = 0;
  int longTapDownVal = 0;
  int longTapUpVal = 0;
  int longTapCancelVal = 0;

  void _onTap() {
    setState(() {
      tapVal++;
      isOn = !isOn;
    });
  }

  void _onTapDown() {
    setState(() {
      tapDownVal++;
    });
  }

  void _onTapUp() {
    setState(() {
      tapUpVal++;
    });
  }

  void _onTapCancel() {
    setState(() {
      tapCancelVal++;
    });
  }

  void _onDoubleTap() {
    setState(() {
      doubleTapVal++;
    });
  }

  void _onDoubleTapDown() {
    setState(() {
      doubleTapDownVal++;
    });
  }

  void _onDoubleTapCancel() {
    setState(() {
      doubleTapCancelVal++;
    });
  }

  void _onLongTap() {
    setState(() {
      longTapVal++;
    });
  }

  void _onLongTapDown() {
    setState(() {
      longTapDownVal++;
    });
  }

  void _onLongTapUp() {
    setState(() {
      longTapUpVal++;
    });
  }

  void _onLongTapCancel() {
    setState(() {
      longTapCancelVal++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: UpdatedBox(
            isOn: isOn,
            onTap: _onTap,
            onTapDown: _onTapDown,
            onTapUp: _onTapUp,
            onTapCancel: _onTapCancel,
            onDoubleTap: _onDoubleTap,
            onDoubleTapDown: _onDoubleTapDown,
            onDoubleTapCancel: _onDoubleTapCancel,
            onLongTap: _onLongTap,
            onLongTapDown: _onLongTapDown,
            onLongTapUp: _onLongTapUp,
            onLongTapCancel: _onLongTapCancel,
          ),
        ),
      ),
      bottomNavigationBar: DataContent(
          tapVal: tapVal,
          tapDownVal: tapDownVal,
          tapUpVal: tapUpVal,
          tapCancelVal: tapCancelVal,
          doubleTapVal: doubleTapVal,
          doubleTapDownVal: doubleTapDownVal,
          doubleTapCancelVal: doubleTapCancelVal,
          longTapVal: longTapVal,
          longTapDownVal: longTapDownVal,
          longTapUpVal: longTapUpVal,
          longTapCancelVal: longTapCancelVal,
          isOn: isOn),
    );
  }
}

/// Child
class UpdatedBox extends StatelessWidget {
  const UpdatedBox(
      {super.key,
      this.isOn = false,
      required this.onTap,
      required this.onDoubleTap,
      required this.onDoubleTapCancel,
      required this.onDoubleTapDown,
      required this.onLongTap,
      required this.onLongTapCancel,
      required this.onLongTapDown,
      required this.onLongTapUp,
      required this.onTapCancel,
      required this.onTapDown,
      required this.onTapUp});

  final bool isOn;
  final Function onTap;
  final Function onTapDown;
  final Function onTapUp;
  final Function onTapCancel;
  final Function onDoubleTap;
  final Function onDoubleTapDown;
  final Function onDoubleTapCancel;
  final Function onLongTap;
  final Function onLongTapDown;
  final Function onLongTapUp;
  final Function onLongTapCancel;

  void _onTapHandler() {
    onTap();
  }

  void _onTapDownHandler() {
    onTapDown();
  }

  void _onTapUpHandler() {
    onTapUp();
  }

  void _onTapCancelHandler() {
    onTapCancel();
  }

  void _onDoubleTapHandler() {
    onDoubleTap();
  }

  void _onDoubleTapDownHandler() {
    onDoubleTapDown();
  }

  void _onDoubleTapCancelHandler() {
    onDoubleTapCancel();
  }

  void _onLongTapHandler() {
    onLongTap();
  }

  void _onLongTapDownHandler() {
    onLongTapDown();
  }

  void _onLongTapUpHandler() {
    onLongTapUp();
  }

  void _onLongTapCancelHandler() {
    onLongTapCancel();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTapHandler,
      onTapDown: (details) => _onTapDownHandler(),
      onTapUp: (details) => _onTapUpHandler(),
      onTapCancel: _onTapCancelHandler,
      onDoubleTap: _onDoubleTapHandler,
      onDoubleTapDown: (details) => _onDoubleTapDownHandler(),
      onDoubleTapCancel: _onDoubleTapCancelHandler,
      onLongPress: _onLongTapHandler,
      onLongPressDown: (details) => _onLongTapDownHandler(),
      onLongPressUp: _onLongTapUpHandler,
      onLongPressCancel: _onLongTapCancelHandler,
      child: Container(
        color: (isOn ? Colors.red : Colors.grey),
        width: 200,
        height: 200,
      ),
    );
  }
}

/// Child
class DataContent extends StatelessWidget {
  const DataContent(
      {super.key,
      required this.tapCancelVal,
      required this.doubleTapCancelVal,
      required this.doubleTapDownVal,
      required this.doubleTapVal,
      required this.longTapCancelVal,
      required this.longTapDownVal,
      required this.longTapUpVal,
      required this.longTapVal,
      required this.tapDownVal,
      required this.tapUpVal,
      required this.tapVal,
      required this.isOn});

  final int tapVal;
  final int tapDownVal;
  final int tapUpVal;
  final int tapCancelVal;
  final int doubleTapVal;
  final int doubleTapDownVal;
  final int doubleTapCancelVal;
  final int longTapVal;
  final int longTapDownVal;
  final int longTapUpVal;
  final int longTapCancelVal;
  final bool isOn;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          " isOn: $isOn,\n onTap: $tapVal,\n onTapDown: $tapDownVal,\n onTapUp: $tapUpVal,\n onTapCancel: $tapCancelVal,\n onDoubleTap: $doubleTapVal,\n onDoubleTapDown: $doubleTapDownVal,\n onDoubleTapCancel: $doubleTapCancelVal,\n onLongTap: $longTapVal,\n onLongTapDown: $longTapDownVal,\n onLongTapUp: $longTapUpVal,\n onLongTapCancel: $longTapCancelVal",
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
