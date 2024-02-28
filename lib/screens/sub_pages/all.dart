import 'package:flutter/material.dart';
import '../../custom_classes/chat_model.dart';

class All extends StatefulWidget {
  const All({super.key});

  @override
  State<All> createState() => _AllState();
}

List<ChatModel> chatList = [
  ChatModel(name: 'Mr. Albert Agyei', position: 'Head master'),
  ChatModel(name: 'Mr. Lewis Onumah', position: 'Asst. Head master'),
  ChatModel(name: 'Mrs. Joyce Owusu', position: 'Grade 6 head teacher')
];

class _AllState extends State<All> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, index){

        bool isLast = index == chatList.length - 1;
        bool isFirst = index == 0;

        return Card(
          margin: EdgeInsets.only(top: isFirst? 15 : 8, bottom: isLast ? 15 : 0, left: 16, right: 16),
          child: ListTile(
            contentPadding: const EdgeInsets.only(right: 0, left: 10),
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              radius: 25,
            ),
            title: Text(chatList[index].name),
            subtitle: Text(chatList[index].position),
            trailing: PopupMenuButton(
              itemBuilder: (context){
                return const [PopupMenuItem(child: Text('Details'))];
              },
            ),
          ),
        );
      },
    );
  }
}
