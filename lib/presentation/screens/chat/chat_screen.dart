import 'package:curso_flutter_yes_no_app/domain/entities/message.dart';
import 'package:curso_flutter_yes_no_app/presentation/providers/chat_provider.dart';
import 'package:curso_flutter_yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:curso_flutter_yes_no_app/presentation/widgets/chat/response_message_bubble.dart';
import 'package:curso_flutter_yes_no_app/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i.blogs.es/774e47/cartel-bebe-jefazo/1366_2000.jpg"),
          ),
        ),
        title: const Text("Jefazo "),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];

                  return (message.fromWho == FromWho.me)
                      ? MyMessageBubble(message: message)
                      : ResponseMessageBubble(message: message);
                },
              ),
            ),
            // Caja de Texto de Mensaje
            MessageFieldBox(
              onValue: chatProvider.sendMessage,
            )
          ],
        ),
      ),
    );
  }
}
