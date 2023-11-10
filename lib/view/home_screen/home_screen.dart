import 'package:flutter/material.dart';
import 'package:instagram_clone/database/database.dart';
import 'package:instagram_clone/utils/color_constant/color_constants.dart';
import 'package:instagram_clone/utils/image_constant/image_constant.dart';
import 'package:instagram_clone/view/add_screen/add-screen.dart';

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
      body: Database.Pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          selectedIconTheme: IconThemeData(
            color: ColorConstants.primaryBlack,
            size: 30,
          ),
          unselectedIconTheme: IconThemeData(
            color: ColorConstants.primaryBlack,
            size: 30,
          ),
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
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddScreen(),
                        ));
                  },
                  child: Image(
                    image: AssetImage(ImageConstant.addIcon),
                    height: 26,
                  ),
                ),
                label: "Add"),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(ImageConstant.reelsIcon),
                  height: 26,
                ),
                label: "reels",
                backgroundColor: ColorConstants.primaryBlack),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage:
                    AssetImage(Database.ProfilDetailes["profile_photo"]),
                radius: 13,
              ),
              label: "fav",
            ),
          ]),
    );
  }
}
