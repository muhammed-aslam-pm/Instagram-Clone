import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/color_constant/color_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryWhite,
        title: Row(
          children: [
            Text(
              "aslam____mhd",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.primaryBlack),
            ),
            Icon(
              Icons.expand_more_rounded,
              size: 30,
              color: ColorConstants.primaryBlack,
            )
          ],
        ),
        actions: [
          Image(
            image: AssetImage("assets/images/more.png"),
            height: 28,
            width: 28,
          ),
        ],
        elevation: 0,
      ),
      body: Text("Profile"),
    );
  }
}
