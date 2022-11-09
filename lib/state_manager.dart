import 'package:flutter/material.dart';
import 'data_content.dart';
import 'updated_box.dart';

/// Parents
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
        child: UpdatedBox(
          isOn: _isOn,
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
          isOn: _isOn),
    );
  }
}
