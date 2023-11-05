import 'package:flutter/material.dart';
import 'package:instagram_clone/view/add_screen/add-screen.dart';
import 'package:instagram_clone/view/explore_screen/explore_screen.dart';
import 'package:instagram_clone/view/home_page/home_page.dart';
import 'package:instagram_clone/view/profile_screen/profile_screen.dart';
import 'package:instagram_clone/view/reels_screen/reels_screen.dart';

class Database {
  static List<Widget> Pages = [
    const HomePage(),
    const ExploreScreen(),
    const AddScreen(),
    const ReelsScreen(),
    const ProfileScreen()
  ];
  static List profilePhotos = [
    "assets/images/dp1.png",
    "assets/images/dp2.png",
    "assets/images/dp3.png",
    "assets/images/dp4.png",
    "assets/images/dp5.png"
  ];

  static List<Map> userDetailes = [
    {"Name": "Your Story", "ProfilePhoto": "assets/images/dp1.png"},
    {"Name": "Dayana", "ProfilePhoto": "assets/images/dp2.png"},
    {"Name": "Arjun", "ProfilePhoto": "assets/images/dp3.png"},
    {"Name": "Rahul", "ProfilePhoto": "assets/images/dp4.png"},
    {"Name": "Anushka", "ProfilePhoto": "assets/images/dp5.png"},
    {"Name": "Dayana", "ProfilePhoto": "assets/images/dp2.png"},
    {"Name": "Arjun", "ProfilePhoto": "assets/images/dp3.png"},
    {"Name": "Rahul", "ProfilePhoto": "assets/images/dp4.png"},
    {"Name": "Anushka", "ProfilePhoto": "assets/images/dp5.png"},
  ];
}
