import 'package:flutter/material.dart';

import '../authentication_page.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          border:
                          Border.all(color: Colors.white, width: 3),
                          shape: BoxShape.circle),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                            Border.all(color: Colors.blue, width: 2),
                            shape: BoxShape.circle),
                        child: const Icon(Icons.edit),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'George Amponsah Boadi',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                const Text(
                  'georgeamponsah675@gmail.com',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Positioned(
              top: 20,
              right: 0,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.sunny,
                  color: Colors.white,
                ),
              ))
        ]),
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.person_pin),
          title: const Text('Account management'),
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
        ),
        const Expanded(child: SizedBox()),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const AuthenticationPage()));
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.logout),
                SizedBox(
                  width: 5,
                ),
                Text('Log out')
              ],
            )),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
