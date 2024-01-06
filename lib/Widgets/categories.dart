import 'package:flutter/material.dart';

import '../Page/snack_list_screen.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 31),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Snack()),
                    );
                  },
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0, 1.2),
                          spreadRadius: 0.2,
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Container(
                      transform: Matrix4.translationValues(0, -30, 0),
                      width: 30,
                      height: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('assets/snack.png'),
                            fit: BoxFit.scaleDown,
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 31),
                child: Text(
                  'Snacks',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: -2,
                      fontSize: 12),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 31),
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0, 1.2),
                        spreadRadius: 0.2,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: Container(
                    transform: Matrix4.translationValues(0, -30, 0),
                    width: 30,
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/drink.png'),
                          fit: BoxFit.scaleDown,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 31),
                child: Text(
                  'Beverages',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: -2,
                      fontSize: 12),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 31),
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0, 1.2),
                        spreadRadius: 0.2,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: Container(
                    transform: Matrix4.translationValues(0, -30, 0),
                    width: 30,
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/meals.png'),
                          fit: BoxFit.scaleDown,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 31),
                child: Text(
                  'Meals',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: -2,
                      fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
