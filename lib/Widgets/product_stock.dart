import 'package:flutter/material.dart';

class ManageProductPage extends StatefulWidget {
  const ManageProductPage({super.key});

  @override
  State<ManageProductPage> createState() => _ManageProductPageState();
}

class _ManageProductPageState extends State<ManageProductPage> {
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
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          alignment: Alignment.center,
                          height: 25,
                          width: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Color.fromARGB(255, 240, 85, 85),
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {},
                            child: Icon(
                              Icons.remove,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                            height: 25,
                            width: 40,
                            child: Center(
                                child: Text('1',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    )))),
                        Container(
                          alignment: Alignment.center,
                          height: 25,
                          width: 37,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Color.fromARGB(255, 83, 255, 155),
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {},
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
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
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          alignment: Alignment.center,
                          height: 25,
                          width: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Color.fromARGB(255, 240, 85, 85),
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {},
                            child: Icon(
                              Icons.remove,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                            height: 25,
                            width: 40,
                            child: Center(
                                child: Text('1',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    )))),
                        Container(
                          alignment: Alignment.center,
                          height: 25,
                          width: 37,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Color.fromARGB(255, 83, 255, 155),
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {},
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
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
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          alignment: Alignment.center,
                          height: 25,
                          width: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Color.fromARGB(255, 240, 85, 85),
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {},
                            child: Icon(
                              Icons.remove,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                            height: 25,
                            width: 40,
                            child: Center(
                                child: Text('1',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    )))),
                        Container(
                          alignment: Alignment.center,
                          height: 25,
                          width: 37,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Color.fromARGB(255, 83, 255, 155),
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {},
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
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
        ),
        SizedBox(
          height: 21,
        ),
        InkWell(
          onTap: () {
            print("Stock Telah Diperbarui");
          },
          child: Container(
            height: 55,
            width: 220,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: Text(
                'Apply Stock',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: ('Poppins'),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
