import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:net_cafe_app/Page/add_product.dart';
import 'package:net_cafe_app/Page/history.dart';
import 'package:net_cafe_app/Page/home_page_screen.dart';
import 'package:net_cafe_app/Page/manage_product.dart';
import 'package:net_cafe_app/Page/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import '../Widgets/menu_items.dart';

class SideBar extends StatefulWidget {
  SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>
    with SingleTickerProviderStateMixin<SideBar> {
  late AnimationController _animationController;
  late StreamController<bool> isSidebarOpenedStreamController;
  late Stream<bool> isSidebarOpenedStream;
  late StreamSink<bool> isSidebarOpenedSink;
  final _animationDuration = const Duration(milliseconds: 300);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSidebarOpenedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSidebarOpenedStreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSidebarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
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
    final screenWidth = MediaQuery.of(context).size.width;

    return StreamBuilder<bool>(
        initialData: false,
        stream: isSidebarOpenedStream,
        builder: (context, isSideBarOpenedAsync) {
          return AnimatedPositioned(
            duration: _animationDuration,
            top: 0,
            bottom: 0,
            left: isSideBarOpenedAsync.data! ? 0 : -screenWidth,
            right: isSideBarOpenedAsync.data! ? 0 : screenWidth - 45,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.redAccent,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          title: Text(
                            "Hi, Welcome",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w800),
                          ),
                          subtitle: Text(
                            user.email!,
                            style: TextStyle(
                              color: Color(0xFF1BB5FD),
                              fontSize: 18,
                            ),
                          ),
                          leading: CircleAvatar(
                            child: Image(
                              image: AssetImage('assets/man.png'),
                            ),
                            radius: 40,
                          ),
                        ),
                        Divider(
                          height: 64,
                          thickness: 0.5,
                          color: Colors.white.withOpacity(0.3),
                          indent: 32,
                          endIndent: 32,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          child: MenuItem(
                            icon: Icons.home_filled,
                            title: "Dashboard",
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddProduct()),
                            );
                          },
                          child: MenuItem(
                            icon: Icons.post_add_rounded,
                            title: "Add Product",
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ManageProduct()),
                            );
                          },
                          child: MenuItem(
                            icon: Icons.my_library_books_outlined,
                            title: "Manage Stock",
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingPage()),
                            );
                          },
                          child: MenuItem(
                            icon: Icons.settings_outlined,
                            title: "Setting",
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => History()),
                            );
                          },
                          child: MenuItem(
                            icon: Icons.history_rounded,
                            title: "History",
                          ),
                        ),
                        InkWell(
                          onTap: signUserOut,
                          child: MenuItem(
                            icon: Icons.logout,
                            title: "Logout",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Align(
                  alignment: Alignment(0, -0.92),
                  child: GestureDetector(
                    onTap: () {
                      onIconPressed();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0x33EA2027),
                          borderRadius: BorderRadius.circular(10)),
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      child: AnimatedIcon(
                        progress: _animationController.view,
                        icon: AnimatedIcons.menu_close,
                        color: Colors.red,
                        size: 25,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
