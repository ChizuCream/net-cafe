import 'package:flutter/material.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              hintText: 'Nama Produk',
              hintStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: ('Poppins'),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        SizedBox(
          height: 15,
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
              hintText: 'Harga Jual',
              hintStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: ('Poppins'),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        SizedBox(
          height: 15,
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
              hintText: 'Kategori',
              hintStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: ('Poppins'),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        SizedBox(
          height: 15,
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
              hintText: 'Stock',
              hintStyle: TextStyle(
                  fontSize: 14,
                  fontFamily: ('Poppins'),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: () {
            print("Produk telah di upload");
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
                'Upload',
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
        height: 15,
        ),
      ],
    );
  }
}
