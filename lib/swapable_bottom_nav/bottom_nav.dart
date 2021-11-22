import 'package:flutter/material.dart';
import 'package:test_pro/swapable_bottom_nav/screens/dashBoard.dart';
import 'package:test_pro/swapable_bottom_nav/screens/home.dart';
import 'package:test_pro/swapable_bottom_nav/screens/profile.dart';

import 'GbW/bottom_nav_item.dart';

class Bottom_Navigation extends StatefulWidget {
  const Bottom_Navigation({Key? key}) : super(key: key);

  @override
  _Bottom_Navigation00State createState() => _Bottom_Navigation00State();
}
class _Bottom_Navigation00State extends State<Bottom_Navigation> {
  int _currentIndex = 0;
  PageController _pageController = new PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swapable Bottom Navigation'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });

        },
        children: [DashboardScreen(), HomeScreen(), ProfileScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          buildBottomNavigationBarItem("DashBoard",Colors.redAccent),
          buildBottomNavigationBarItem("Home",Colors.blue),
          buildBottomNavigationBarItem("Profile",Colors.green),
        ],
        onTap: (index) {
          setState(() {
            _pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.ease);
          });
        },
      ),
    );
  }


}
