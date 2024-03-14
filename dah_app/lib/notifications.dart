import 'package:flutter/material.dart';

class Notifications extends ChangeNotifier {
  String _message = '';

  String get message => _message;

  void updateMessage(String newMessage) {
    _message = newMessage;
    notifyListeners();
  }
}
