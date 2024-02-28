import 'package:flutter/material.dart';

class DynamicPage extends StatefulWidget{
  final String title;
  const DynamicPage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _DynamicPageState();
}

class _DynamicPageState extends State<DynamicPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Theme.of(context).primaryColor,
       iconTheme: const IconThemeData(color: Colors.white),
       title: Text(widget.title),
       titleTextStyle: const TextStyle(color: Colors.white),
     ),
   );
  }
}