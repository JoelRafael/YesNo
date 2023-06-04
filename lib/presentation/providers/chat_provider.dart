import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswe = GetYesNoAnswer();
  List<Message> messageList = [];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage =
        Message(text: text, fromWho: FromWho.me, dateText: '01/06/2023');
    messageList.add(newMessage);

    if (text.endsWith('?')) {
      herReply();
    }
    notifyListeners(); //Aqui notifico que el estado cambio para que la app lo vuelva a renderizar
    moveScrollToBottom();
  }

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswe.getAnswer();
    messageList.add(herMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}
