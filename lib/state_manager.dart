import 'package:flutter/material.dart';

class StateManager extends StatefulWidget {
  const StateManager({super.key});

  @override
  State<StateManager> createState() => _StateManagerState();
}

class _StateManagerState extends State<StateManager> {
  bool _isOn = true;
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
      _isOn = !_isOn;
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

  /// this build is called every time the box is pressed
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _onTap,
          onTapDown: (details) => _onTapDown(),
          onTapUp: (details) => _onTapUp(),
          onTapCancel: _onTapCancel,
          onDoubleTap: _onDoubleTap,
          onDoubleTapDown: (details) => _onDoubleTapDown(),
          onDoubleTapCancel: _onDoubleTapCancel,
          onLongPress: _onLongTap,
          onLongPressDown: (details) => _onLongTapDown(),
          onLongPressUp: _onLongTapUp,
          onLongPressCancel: _onLongTapCancel,
          child: Container(
            color: (_isOn ? Colors.red : Colors.grey),
            width: 200,
            height: 200,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.yellow,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            " isOn: $_isOn,\n onTap: $tapVal,\n onTapDown: $tapDownVal,\n onTapUp: $tapUpVal,\n onTapCancel: $tapCancelVal,\n onDoubleTap: $doubleTapVal,\n onDoubleTapDown: $doubleTapDownVal,\n onDoubleTapCancel: $doubleTapCancelVal,\n onLongTap: $longTapVal,\n onLongTapDown: $longTapDownVal,\n onLongTapUp: $longTapUpVal,\n onLongTapCancel: $longTapCancelVal",
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
