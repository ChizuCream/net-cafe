import 'package:flutter/material.dart';

class SnackList extends StatelessWidget {
  const SnackList({super.key});

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
                      padding: EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        'Japota',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        '10 pcs left',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            '\10.000',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: 63,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              'Add',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFEA2027),
                              ),
                            ),
                          ),
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
                      image: AssetImage('assets/japota.png'),
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
                      padding: EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        'Nabati Richeese',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        '50 pcs left',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            '\3.000',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: 63,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              'Add',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFEA2027),
                              ),
                            ),
                          ),
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
                      image: AssetImage('assets/nabati.png'),
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
                      padding: EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        'Oreo',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        '30 pcs left',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            '\3.000',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: 63,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              'Add',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFEA2027),
                              ),
                            ),
                          ),
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
                      image: AssetImage('assets/oreo.png'),
                      fit: BoxFit.fill,
                    )),
              )
            ],
          ),
        )
      ],
    );
  }
}
