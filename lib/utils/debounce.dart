import 'dart:async';
import 'package:flutter/material.dart';

class Debounce {
  final int milliseconds;
  Debounce({
    required this.milliseconds,
  });

  Timer? _timer;

  void run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }

    _timer = Timer(Duration(microseconds: milliseconds), action);
  }
}
