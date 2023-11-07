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
  static List<Map> feed = [
    {
      "ProfilePhoto": "assets/images/feed dp1.png",
      "Name": "joshua_l",
      "Location": "Tokiyo ,Japan",
      "Image": "assets/images/feed image1.png",
      "Likes": 2331,
      "Description":
          " The game in Japan was amazing and I want to share some photos",
      "Comments": 45,
      "Time": 20
    },
    {
      "ProfilePhoto": "assets/images/dp2.png",
      "Name": "dayana__2",
      "Location": "Home",
      "Image": "assets/images/feed image4.png",
      "Likes": 98841,
      "Description": " Solotude 🥀",
      "Comments": 466,
      "Time": 30
    },
    {
      "ProfilePhoto": "assets/images/dp3.png",
      "Name": "arjun_official",
      "Location": "Delhi , India",
      "Image": "assets/images/feed image3.png",
      "Likes": 2331,
      "Description": " Somewhere under the dark sky",
      "Comments": 12,
      "Time": 60
    },
    {
      "ProfilePhoto": "assets/images/dp4.png",
      "Name": "rahul_cr",
      "Location": "keral , India",
      "Image": "assets/images/feed image2.png",
      "Likes": 31,
      "Description": " ",
      "Comments": 2,
      "Time": 10
    },
  ];
  static List<String> searchImages = [
    "assets/images/sf 1.png",
    "assets/images/sf2.png",
    "assets/images/sf3.png",
    "assets/images/sf4.png",
    "assets/images/sf5.png",
    "assets/images/sf2.png",
    "assets/images/sf7.png",
    "assets/images/sf8.png",
    "assets/images/sf9.png",
    "assets/images/sf2.png",
    "assets/images/sf10.png",
    "assets/images/sf11.png",
    "assets/images/sf12.png",
    "assets/images/sf3.png",
    "assets/images/sf14.png",
    "assets/images/sf15.png",
    "assets/images/sf16.png",
    "assets/images/sf17.png",
    "assets/images/sf18.png",
    "assets/images/sf19.png",
    "assets/images/sf20.png",
    "assets/images/feed image1.png",
  ];
}
