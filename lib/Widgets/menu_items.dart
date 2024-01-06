import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white,
                fontFamily: ('Poppins')),
          )
        ],
      ),
    );
  }
}
