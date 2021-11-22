import 'package:flutter/material.dart';
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(child: Text('Dashboard Screen',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),),),
    );
  }
}
