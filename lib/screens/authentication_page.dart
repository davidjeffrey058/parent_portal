import 'package:flutter/material.dart';
import 'package:parent_portal/custom_classes/my_colors.dart';
import 'package:parent_portal/screens/sub_pages/sign_in.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

MyColors myColors = MyColors();

class _AuthenticationPageState extends State<AuthenticationPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 216,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 33,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            selectedIndex == 0;
                          });
                        },
                        child: Text('Sign in',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: selectedIndex == 0
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            )),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            selectedIndex == 1;
                          });
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: selectedIndex == 1
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SignIn()
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    var p1 = Offset(size.width * 0.1825, size.height * 0.99);
    var p2 = Offset(size.width * 0.428, size.height * 0.7812);
    var p3 = Offset(size.width * 0.789, size.height * 0.529);
    var p4 = Offset(size.width, size.height * 0.6047);
    // var p5 = Offset(size.width, size.height * 0.72);

    path.quadraticBezierTo(p1.dx, p1.dy, p2.dx, p2.dy);
    path.quadraticBezierTo(p3.dx, p3.dy, p4.dx, p4.dy);
    // path.quadraticBezierTo(p4.dx, p4.dy, p5.dx, p5.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
