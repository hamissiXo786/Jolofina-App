import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _apiKey = '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';
  String get apiKey => _apiKey;
  set apiKey(String value) {
    _apiKey = value;
  }
}
