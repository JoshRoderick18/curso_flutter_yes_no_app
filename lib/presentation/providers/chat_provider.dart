import 'package:curso_flutter_yes_no_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: "Hola jefe", fromWho: FromWho.me),
    Message(text: "Me soplo viento", fromWho: FromWho.me),
  ];
  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners();
    scrollToBottom();
  }

  Future<void> scrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
