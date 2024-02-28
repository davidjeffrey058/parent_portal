import 'package:flutter/material.dart';
import 'package:parent_portal/custom_classes/my_colors.dart';

class MyChildrenPage extends StatefulWidget {
  const MyChildrenPage({super.key});

  @override
  State<MyChildrenPage> createState() => _MyChildrenPageState();
}

List childrenList = ['Ernest Boadi Jeffrey', 'Alex boadi'];
List<Map> childOption = [{
  'label': 'Personal details',
  'iconData' : Icons.person,
  'color' : const Color(0xff004CFF)
},
  {
    'label': 'Attendance records',
    'iconData' : Icons.feed,
    'color': const Color(0xffFF0080)
  },
  {
    'label': 'Grades',
    'iconData' : Icons.grading,
    'color': const Color(0xff02D239)
  },
  {
    'label':'Achievements',
    'iconData': Icons.stars,
    'color': const Color(0xffFFE500)
  }];

MyColors myColors = MyColors();

class _MyChildrenPageState extends State<MyChildrenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Children'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: childrenList.length,
        itemBuilder: (context, index){

          bool isNotFirst = index != 0;
          bool isLast = index == childrenList.length - 1;

          return Card(
            margin: EdgeInsets.only(top: isNotFirst ? 20 : 10, right: 10, left: 10, bottom: isLast ? 20 : 0),
            child: ExpansionTile(
              tilePadding: const EdgeInsets.fromLTRB(25, 10, 18, 10),
              leading: CircleAvatar(
                radius: 23,
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              title: Text(childrenList[index]),
              children: childOption.map((e){
                return Container(
                  margin: const EdgeInsets.all(10),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: myColors.lightGrey
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    onPressed: (){},
                    child: ListTile(
                      leading: Icon(e['iconData'], color: e['color'],),
                      title: Text(e['label']),
                      trailing: const Icon(Icons.arrow_right),
                    ),
                  ),
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
