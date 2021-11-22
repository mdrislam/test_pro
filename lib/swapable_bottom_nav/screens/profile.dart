import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.green,
      body: Center(child: Text('Profile Screen',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),),),
    );
  }
}