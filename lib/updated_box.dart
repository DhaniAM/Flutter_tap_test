import 'package:flutter/material.dart';

/// Child
class UpdatedBox extends StatelessWidget {
  const UpdatedBox(
      {super.key,
      required this.isOn,
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
