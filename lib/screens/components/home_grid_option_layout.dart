import 'package:flutter/material.dart';
import 'package:parent_portal/screens/dynamic_page.dart';

import '../authentication_page.dart';

class HomeGridOptionLayout extends StatelessWidget {
  final List<Map> labels;
  final int crossAxisCount;
  final double? iconSize;
  final double? crossAxisSpacing;
  final double? mainAxisSpacing;

  const HomeGridOptionLayout({
    super.key,
    required this.labels,
    this.crossAxisCount = 2,
    this.iconSize,
    this.crossAxisSpacing,
    this.mainAxisSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        primary: false,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        itemCount: labels.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: crossAxisSpacing ?? 40,
          mainAxisSpacing: mainAxisSpacing ?? 40,
        ),
        itemBuilder: (context, index) {
          return MaterialButton(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              // side: BorderSide(color: myColors.customGrey),
              borderRadius: BorderRadius.circular(15),
            ),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        DynamicPage(title: labels[index]['label']))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  labels[index]['iconData'],
                  color: myColors.customGrey,
                  size: iconSize ?? 43,
                ),
                const SizedBox(
                  height: 17,
                ),
                Text(
                  labels[index]['label'],
                  style: TextStyle(color: myColors.customGrey, fontSize: 15),
                )
              ],
            ),
          );
        });
  }
}
