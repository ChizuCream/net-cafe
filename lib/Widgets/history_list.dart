import 'package:flutter/material.dart';

class HistoryList extends StatefulWidget {
  const HistoryList({super.key});

  @override
  State<HistoryList> createState() => _EditHistoryListState();
}

class _EditHistoryListState extends State<HistoryList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 96,
          width: 311,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(0, 3),
                spreadRadius: 0.5,
                blurRadius: 3,
              ),
            ],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 15, left: 20),
                      child: Text(
                        'Beef Burger',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 120,
                          child: Center(
                              child: Text(
                            '1',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                transform: Matrix4.translationValues(-20, 0, 0),
                height: 59,
                width: 61,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/burger.png'),
                      fit: BoxFit.fill,
                    )),
              )
            ],
          ),
        ),
        SizedBox(
          height: 21,
        ),
        Container(
          height: 96,
          width: 311,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(0, 3),
                spreadRadius: 0.5,
                blurRadius: 3,
              ),
            ],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 15, left: 20),
                      child: Text(
                        'Coca Cola',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                            height: 20,
                            width: 120,
                            child: Center(
                                child: Text('1',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    )))),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                transform: Matrix4.translationValues(-20, 0, 0),
                height: 59,
                width: 61,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/cola.png'),
                    )),
              )
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
