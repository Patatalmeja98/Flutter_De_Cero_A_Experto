import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();
  List<Message> messagelist = [
    Message(text: 'hola amor!', fromwho: Fromwho.me),
    Message(text: 'ya regresaste ', fromwho: Fromwho.me)
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromwho: Fromwho.me);
    messagelist.add(newMessage);

    if (text.endsWith('?')) {
      herTeply();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> herTeply() async {
    final herMessage = await getYesNoAnswer.getAnswer();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(microseconds: 100));
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}
