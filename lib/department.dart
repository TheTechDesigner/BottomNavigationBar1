import 'package:flutter/material.dart';

class Department extends StatefulWidget {
  Department({Key key}) : super(key: key);

  @override
  _DepartmentState createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
         child: Text('Department', style: TextStyle(color: Colors.black, fontSize: 48.0, fontWeight: FontWeight.bold),),
      ),
    );
  }
}