import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messagelist = [
    Message(text: 'hola amor!', fromwho: Fromwho.me),
    Message(text: 'ya regresaste ', fromwho: Fromwho.me)
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromwho: Fromwho.me);
    messagelist.add(newMessage);

    notifyListeners();
  }
}
