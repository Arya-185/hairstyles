import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {super.key, required this.icon, required this.text, required this.ontap});

  final IconData icon;
  final String text;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}
