import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_navigation_pages/home_page.dart';
import 'home_navigation_pages/messages_page.dart';
import 'home_navigation_pages/my_children_page.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => CreateHome();
  }

  List<Widget> pages = [
    const HomePage(),
    const MessagesPage(),
    const MyChildrenPage()
  ];
  int pageIndex = 0;
  class CreateHome extends State<Home>{

    @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        currentIndex: pageIndex,
        onTap: (itemIndex){
          setState(() => pageIndex = itemIndex);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_emoticon_rounded),
              label: 'My children'
          )
        ],
      ),
    );
  }


}