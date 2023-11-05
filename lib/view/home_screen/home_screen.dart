import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/color_constant/color_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          selectedIconTheme: IconThemeData(
              color: ColorConstants.primaryBlack, size: 30, fill: 0.1),
          unselectedIconTheme: IconThemeData(
              color: ColorConstants.primaryBlack, size: 30, fill: 0.1),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  selectedIndex == 0 ? Icons.home : Icons.home_outlined,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: selectedIndex == 1 ? 35 : 30,
                ),
                label: "search"),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                ),
                label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(
                  selectedIndex == 3 ? Icons.favorite : Icons.favorite_border,
                ),
                label: "fav"),
            const BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 13,
                ),
                label: "fav"),
          ]),
    );
  }
}
