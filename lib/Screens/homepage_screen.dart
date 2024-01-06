import 'package:flutter/material.dart';
import 'package:net_cafe_app/Page/profile_page.dart';
import 'package:net_cafe_app/Sidebar/sidebar_layout.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 5),
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Color(0x33EA2027),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SideBarLayout()),
                    );
                  },
                  child: Icon(
                    Icons.menu_rounded,
                    size: 25,
                    color: Color(0xFFEA2027),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.search_rounded,
                                color: Colors.black,
                              ),
                              hintText: 'Search the Product',
                              hintStyle: TextStyle(
                                  fontSize: 12,
                                  fontFamily: ('Poppins'),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, right: 19),
              child: Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    icon: Icon(
                      Icons.account_circle_rounded,
                      size: 45,
                      color: Color(0xFFEA2027),
                    ),
                  )),
            ),
          ],
        )
      ],
    );
  }
}
