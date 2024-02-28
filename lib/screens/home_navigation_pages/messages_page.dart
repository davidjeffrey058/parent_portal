import 'package:flutter/material.dart';
import 'package:parent_portal/custom_classes/my_colors.dart';

import '../sub_pages/all.dart';
import '../sub_pages/chats.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}
late TabController _tabController;
MyColors myColors = MyColors();

class _MessagesPageState extends State<MessagesPage> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColors.lighterBlue,
      appBar: AppBar(
        title: const Text('Messages'),
        actions: [
         IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search),
          ),
        PopupMenuButton(itemBuilder: (context){
          return const [PopupMenuItem(child: Text('Option'))];
        })],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'All',
            ),
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Chats(),
          All(),
        ],
      )
    );
  }
}
