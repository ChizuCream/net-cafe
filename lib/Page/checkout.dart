import "package:flutter/material.dart";
import "package:net_cafe_app/Widgets/checkout_list.dart";
import 'home_page_screen.dart';
import 'profile_page.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

//FontWeight.w400 Normal/Regular
//FontWeight.w500 Medium
//FontWeight.w600 Semi Bold
//FontWeight.w700 Bold

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 19, right: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Color(0xffea2027),
                    ),
                  ),
                  Text(
                    'Checkout',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: ('Poppins'),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'tes',
                    style: TextStyle(color: Colors.transparent),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 50, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Review',
                    style: TextStyle(
                      fontFamily: ('Poppins'),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            CheckoutList(),
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
          elevation: 0,
          backgroundColor: Colors.transparent,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Checkout()),
            );
          },
          child: Icon(Icons.card_travel_rounded),
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
                // Image(
                //   height: 35,
                //   image: AssetImage('image/home.png'),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
