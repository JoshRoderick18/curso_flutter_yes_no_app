import 'package:curso_flutter_yes_no_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: "Hola jefe", fromWho: FromWho.me),
    Message(text: "Me soplo viento", fromWho: FromWho.other),
  ];
  Future<void> sendMessage(String text) async {
    // Todo: implementar metodo
  }
}
