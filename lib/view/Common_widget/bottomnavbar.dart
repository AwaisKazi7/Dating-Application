import 'package:flutter/material.dart';
import '../../common/common_colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59.0,
      width: 376.02,
      child: BottomNavigationBar(
        backgroundColor: CommonColors.searchColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/feed_image.png',
              width: 24,
              height: 24,
              color:Colors.red,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/nearby_image.png',
              width: 24,
              height: 24,
              color:Colors.red,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/favourite_image.png',
              width: 24,
              height: 24,
              color: Colors.red,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/message_image.png',
              width: 24,
              height: 24,
              color: Colors.red,
            ),
            label: '',
          ),
        ],
        selectedItemColor: CommonColors.profilebtcolor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
      ),
    );
  }
}
