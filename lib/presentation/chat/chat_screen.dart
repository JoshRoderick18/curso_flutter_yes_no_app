import 'package:flutter/material.dart';

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
    );
  }
}
