import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('No recent chat', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
        Text('Click on \'all\' to start a new chat'),
      ],
    );
  }
}
