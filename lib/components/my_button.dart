import 'package:flutter/material.dart';

// stl biar cepet ada widget
class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const MyButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          height: 50,
          width: 342,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: [Color(0xfffb3d5d), Color(0xfff9996a)],
              stops: [0.25, 0.75],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//  Container(
        //           height: 55,
        //         ),
        //         SizedBox(
        //           width: 350,
        //           child: ElevatedButton(
        //             onPressed: () {},
        //             style:
        //                 ElevatedButton.styleFrom(backgroundColor: Colors.red),
        //             child: const Text('Sign In'),
        //           ),
        //         ),
