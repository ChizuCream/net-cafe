import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:net_cafe_app/Page/profile_page.dart";
import "checkout.dart";
import "home_page_screen.dart";

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  void signUserOut() {
    try {
      FirebaseAuth.instance.signOut();
      print('Logout berhasil');
    } catch (e) {
      print('Error during logout: $e');
    }
  }

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
                    'Setting',
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
            SizedBox(
              height: 23,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Account',
                    style: TextStyle(
                      fontFamily: ('Poppins'),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(20)),
                    height: 160,
                    width: 290,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()),
                            );
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_outline_rounded,
                                size: 35,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Edit Profile',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    fontFamily: ('Poppins'),
                                    color: Colors.black38),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {
                            print('Add Account');
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_add_rounded,
                                size: 35,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Add Account',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    fontFamily: ('Poppins'),
                                    color: Colors.black38),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: signUserOut,
                          child: Row(
                            children: [
                              Icon(
                                Icons.logout,
                                size: 35,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Logout',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    fontFamily: ('Poppins'),
                                    color: Colors.black38),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
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
                  onPressed: () {},
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
