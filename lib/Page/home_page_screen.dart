import "package:flutter/material.dart";
import "package:net_cafe_app/Widgets/populars_screen.dart";
import "../Screens/homepage_screen.dart";
import "../Widgets/categories.dart";
import "checkout.dart";
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            HomePageScreen(),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 50),
              child: Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontFamily: ('Poppins'),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Categories(),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 40, bottom: 20),
              child: Row(
                children: [
                  Text(
                    'Popular This Week',
                    style: TextStyle(
                      fontFamily: ('Poppins'),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Popular(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: LinearGradient(
              colors: [Color(0xfffb3d5d), Color(0xfff9996a)],
              stops: [0.25, 0.75],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Checkout()),
            );
          },
          child: Icon(Icons.card_travel_rounded),
          // child: Image(image: AssetImage('assets/cart.png')),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0x33000000),
              width: 1.0,
            ),
          ),
        ),
        child: BottomAppBar(
          height: 60,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 65, right: 65),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  icon: Icon(Icons.home_filled, size: 25, color: Colors.grey),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  icon: Icon(Icons.person_outline_rounded,
                      size: 25, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
