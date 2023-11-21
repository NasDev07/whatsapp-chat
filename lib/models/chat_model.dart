class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
  });
}

List<ChatModel> chatList = [
  ChatModel(
    name: 'Ahmad',
    message: 'Hello, how are you?',
    time: '15:30',
    avatarUrl: 'https://randomuser.me/api/portraits/men/44.jpg',
  ),
  ChatModel(
    name: 'Nasrul',
    message: 'Hello, Nasrul',
    time: '12:30',
    avatarUrl: 'https://randomuser.me/api/portraits/men/42.jpg',
  ),
  ChatModel(
    name: 'Dila',
    message: 'Good Morning',
    time: '16:30',
    avatarUrl: 'https://randomuser.me/api/portraits/men/47.jpg',
  ),
  ChatModel(
    name: 'Nadila',
    message: 'Hello, Nadila',
    time: '17:40',
    avatarUrl: 'https://i.pravatar.cc/300',
  ),
];
