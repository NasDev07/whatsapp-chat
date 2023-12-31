import 'package:flutter/material.dart';

class CallModel {
  final String id;
  final String imgurl;
  final String name;
  final String time;
  final Icon type;
  final Icon status;
  CallModel({
    required this.id,
    required this.imgurl,
    required this.name,
    required this.time,
    required this.type,
    required this.status,
  });
}

List<CallModel> callList = [
  CallModel(
    id: '456',
    name: "Ahmad",
    time: "Today, 2:25AM",
    imgurl: "https://randomuser.me/api/portraits/men/44.jpg",
    status: const Icon(Icons.call_received, color: Colors.red, size: 20),
    type: const Icon(Icons.phone),
  ),
  CallModel(
    id: '789',
    name: "Nasrul",
    time: "Today, 8:23AM",
    imgurl: "https://randomuser.me/api/portraits/men/42.jpg",
    status: const Icon(Icons.call_made, color: Colors.green, size: 20),
    type: const Icon(
      Icons.phone,
    ),
  ),
  CallModel(
    id: '123',
    name: "Nadila",
    time: "Today, 6:30PM",
    imgurl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyBDcscV1upqOhkHiviRvYoEmtx8w3QHnHPFfn2R3O6g&s',
    status: const Icon(Icons.call_received, color: Colors.green, size: 20),
    type: const Icon(Icons.videocam),
  ),
];
