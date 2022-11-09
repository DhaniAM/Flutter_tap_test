import 'package:flutter/material.dart';

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
