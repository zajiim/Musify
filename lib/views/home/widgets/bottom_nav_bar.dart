import "package:flutter/material.dart";

import '../../../core/constants/colors.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: kIndigoColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kWhite,
      unselectedItemColor: kWhite,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Favorite'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.play_circle_fill_outlined,
            ),
            label: 'Play'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.people_alt,
            ),
            label: 'Profile'),
      ],
    );
  }
}
