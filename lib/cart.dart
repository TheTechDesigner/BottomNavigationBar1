import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
         child: Text('Cart', style: TextStyle(color: Colors.black, fontSize: 48.0, fontWeight: FontWeight.bold),),
      ),
    );
  }
}