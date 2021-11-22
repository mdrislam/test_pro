import 'package:flutter/material.dart';
BottomNavigationBarItem buildBottomNavigationBarItem(String name,Color? color) {

  return BottomNavigationBarItem(
    icon: Icon(Icons.dashboard),
    title: Text(
      name,
      style: TextStyle(color: color!),
    ),
  );
}