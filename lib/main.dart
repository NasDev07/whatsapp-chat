import 'package:chat_app/views/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone',
      theme: ThemeData(
        primaryColor: const Color(0xff075E54),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(
              secondary: const Color(0xff25D366),
            )
            .copyWith(background: Colors.white),
      ),
      home: const Home(),
    );
  }
}
