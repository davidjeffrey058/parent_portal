import 'package:flutter/material.dart';

class EventLayout extends StatelessWidget {

  const EventLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(27, 20, 27, 37),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 31),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).colorScheme.secondary,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: Colors.white,
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300]!,
                offset: const Offset(0, 3),
                blurRadius: 6
            )
          ]
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Upcoming Event',
            style: TextStyle(
                fontSize: 16,
                color: Colors.white
            ),),
          SizedBox(height: 10,),
          Text('Event name',
            style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),),
          SizedBox(height: 10,),
          Text('25th. February, 2023',
            style: TextStyle(
                fontSize: 16,
                color: Colors.white
            ),),
        ],
      ),
    );
  }
}
