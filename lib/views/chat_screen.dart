import 'package:chat_app/models/chat_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        final chat = chatList[index];
        return Column(
          children: [
            Divider(thickness: 1.2, height: 5),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(chat.avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    chat.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    chat.time,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  chat.message,
                  style: const TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
