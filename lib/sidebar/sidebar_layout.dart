import 'package:flutter/material.dart';
import 'package:net_cafe_app/Page/home_page_screen.dart';

import 'sidebar.dart';

class SideBarLayout extends StatelessWidget {
  const SideBarLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HomePage(),
          SideBar(),
        ],
      ),
    );
  }
}
