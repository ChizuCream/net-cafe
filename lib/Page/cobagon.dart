import 'package:flutter/material.dart';
import 'package:net_cafe_app/Widgets/product_stock.dart';

// UNTUK COBA-COBA
class CobaGon extends StatefulWidget {
  const CobaGon({super.key});

  @override
  State<CobaGon> createState() => _CobaGonState();
}

class _CobaGonState extends State<CobaGon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.red,
        ),
        title: Text(
          "Manage Stock",
          style: TextStyle(
            color: Colors.red,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            ManageProductPage(),
            ManageProductPage(),
          ]),
        ),
      ),
    );
  }
}
