import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
         child: Text('Search', style: TextStyle(color: Colors.black, fontSize: 48.0, fontWeight: FontWeight.bold),),
      ),
    );
  }
}