import 'package:flutter/material.dart';
import 'package:parent_portal/screens/authentication_page.dart';
import 'package:parent_portal/screens/components/drawer_component.dart';
import 'package:parent_portal/screens/components/event_layout.dart';
import 'package:parent_portal/screens/components/home_grid_option_layout.dart';
import '../../custom_classes/my_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

MyColors myColors = MyColors();

List<Map> labels = [{'label': 'Events', 'iconData': Icons.event},
  {'label': 'Report', 'iconData': Icons.report_outlined},
  {'label': 'Announcements', 'iconData': Icons.announcement_outlined},
  {'label': 'Activity', 'iconData': Icons.local_activity_outlined},];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    double minWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Dashboard'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return const [
                PopupMenuItem(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                  children: [Text('Anything'), Expanded(child: SizedBox()), Icon(Icons.edit)],
                )),
                PopupMenuItem(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [Text('Anything'), Expanded(child: SizedBox()), Icon(Icons.edit)],
                    )),
                PopupMenuItem(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [Text('Anything'), Expanded(child: SizedBox()), Icon(Icons.edit)],
                    )),
              ];
            },
            tooltip: 'Menu',
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraint){

          // Mobile layout
          if (constraint.maxWidth <= 600){
            return SingleChildScrollView(
              child: Column(
                children: [
                  const EventLayout(),
                  HomeGridOptionLayout(
                    labels: labels,
                  )
                ],
              ),
            );
          }

          // Tablet layout
          else if (constraint.maxWidth <= 768){
            return Column(
              children: [
                const EventLayout(),
                HomeGridOptionLayout(
                  labels: labels,
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                )
              ],
            );
          }

          // Desktop layout
          else {
            bool lteThousand = minWidth <= 1000;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: lteThousand ? 250 : 300,
                  child: const Material(
                    color: Colors.white,
                    child: DrawerComponent(),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const EventLayout(),
                        HomeGridOptionLayout(
                          labels: labels,
                          crossAxisCount: lteThousand ? 3 : 4,
                          crossAxisSpacing: lteThousand ? 10 : null,
                          mainAxisSpacing: lteThousand ? 10 : null,
                          iconSize: lteThousand ? null : 60,
                    
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
      drawer: (minWidth <= 600 || minWidth <= 768) ? const Drawer(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(16), bottomEnd: Radius.circular(16))),
          child: DrawerComponent()
      ) : null,
    );
  }
}
