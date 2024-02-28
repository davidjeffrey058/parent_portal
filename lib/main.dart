import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parent_portal/screens/authentication_page.dart';
import 'package:parent_portal/screens/home.dart';
import 'custom_classes/my_colors.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final MyColors myColors = MyColors();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          primary: Colors.blue,
          secondary: const Color(0xffA2D3FD),
        ),
        scaffoldBackgroundColor: myColors.lighterBlue,
        appBarTheme: AppBarTheme(
          elevation: 1,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Color(0xff707070)),
          titleTextStyle: TextStyle(
            color: MyColors().customGrey,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          unselectedIconTheme: IconThemeData(color: Color(0xffB0B0B0)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 37),
          elevation: 0,
        )),
        tabBarTheme: TabBarTheme(
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.blue,
          unselectedLabelColor: myColors.customGrey,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        // textButtonTheme: TextButtonThemeData(
        //   style: ButtonStyle(
        //     textStyle: MaterialStatePropertyAll(Co)
        //   )
        // )
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        'authentication_page': (context) => const AuthenticationPage(),
      },
    );
  }
}
