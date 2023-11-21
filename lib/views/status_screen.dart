import 'package:chat_app/models/chat_model.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      "https://s3.amazonaws.com/wll-community-production/images/no-avatar.png",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 1,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
              title: const Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Tap to add status update'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Viewed update',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.white,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final chat = chatList[index];
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(chat.avatarUrl),
                    ),
                    title: Text(
                      chat.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('Today, 15:30'),
                  );
                },
                separatorBuilder: (context, _) =>
                    Padding(padding: EdgeInsets.only(top: 5)),
                itemCount: chatList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
