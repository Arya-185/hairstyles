import 'package:flutter/material.dart';
import 'package:hairstyles/hairstyles.dart';
import 'package:hairstyles/widgets/drawer_menu.dart';

class DrawerScreeen extends StatefulWidget {
  const DrawerScreeen({super.key});

  @override
  State<DrawerScreeen> createState() => _DrawerScreeenState();
}

class _DrawerScreeenState extends State<DrawerScreeen> {
  double xoffset = 0;
  double yoffset = 0;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.blueGrey,
            padding: EdgeInsets.only(top: 50, left: 30, bottom: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Menu',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    MenuItem(icon: Icons.home, text: 'Home', ontap: () {}),
                    MenuItem(
                        icon: Icons.home, text: 'Favourites', ontap: () {}),
                    MenuItem(icon: Icons.home, text: 'About Us', ontap: () {}),
                    MenuItem(
                        icon: Icons.home, text: 'Contact Us', ontap: () {}),
                    MenuItem(icon: Icons.home, text: 'Rate Us', ontap: () {}),
                    MenuItem(icon: Icons.home, text: 'More Apps', ontap: () {}),
                  ],
                )
              ],
            ),
          ),
          AnimatedContainer(
              transform: Matrix4.translationValues(xoffset, yoffset, 0)
                ..scale(isDrawerOpen ? 0.95 : 1.00)
                ..rotateZ(isDrawerOpen ? -50 : 0),
              duration: Duration(milliseconds: 2000),
              decoration: BoxDecoration(
                  borderRadius: isDrawerOpen
                      ? BorderRadius.circular(30)
                      : BorderRadius.zero,
                  color: Colors.white),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 20, right: 40, top: 50, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        isDrawerOpen
                            ? GestureDetector(
                                child: Icon(Icons.arrow_back_ios),
                                onTap: () {
                                  setState(() {
                                    xoffset = 0;
                                    yoffset = 0;
                                    isDrawerOpen = false;
                                  });
                                },
                              )
                            : GestureDetector(
                                child: Icon(Icons.menu),
                                onTap: () {
                                  setState(() {
                                    xoffset = 300;
                                    yoffset = 60;
                                    isDrawerOpen = true;
                                  });
                                },
                              ),
                        Text(
                          'Latest Hairstyles',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                  HGrid(),
                ],
              ))
        ],
      ),
    );
  }
}
