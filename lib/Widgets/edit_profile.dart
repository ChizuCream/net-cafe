import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 25, top: 20),
          child: Row(
            children: [
              Text(
                'Name',
                style: TextStyle(
                  fontFamily: ('Poppins'),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 17),
          height: 55,
          width: 450,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black26, width: 1),
            borderRadius: BorderRadius.circular(6),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Melissa Peters',
              hintStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: ('Poppins'),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, top: 20),
          child: Row(
            children: [
              Text(
                'Email',
                style: TextStyle(
                  fontFamily: ('Poppins'),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 17),
          height: 55,
          width: 450,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black26, width: 1),
            borderRadius: BorderRadius.circular(6),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'melpeters@gmail.com',
              hintStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: ('Poppins'),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, top: 20),
          child: Row(
            children: [
              Text(
                'Password',
                style: TextStyle(
                  fontFamily: ('Poppins'),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 17),
          height: 55,
          width: 450,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black26, width: 1),
            borderRadius: BorderRadius.circular(6),
          ),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '**********',
              hintStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: ('Poppins'),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            print("Profile Telah Diperbarui");
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
                'Save Change',
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
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
