import 'package:flutter/material.dart';
import 'package:instagram_clone/database/database.dart';
import 'package:instagram_clone/utils/color_constant/color_constants.dart';
import 'package:instagram_clone/utils/image_constant/image_constant.dart';

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
              Database.ProfilDetailes["user_id"],
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
        iconTheme: IconThemeData(
          color: ColorConstants.primaryBlack,
          size: 38,
        ),
        actions: [
          Image(
            image: AssetImage(ImageConstant.addIcon),
            height: 25,
            width: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: DrawerButton(),
          )
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage(Database.ProfilDetailes["profile_photo"]),
                  ),
                  Column(
                    children: [
                      Text(
                        Database.ProfilDetailes["no_of_posts"],
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: ColorConstants.primaryBlack),
                      ),
                      Text(
                        "Posts",
                        style: TextStyle(
                            fontSize: 15, color: ColorConstants.primaryBlack),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        Database.ProfilDetailes["no_of_followers"],
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: ColorConstants.primaryBlack),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                            fontSize: 15, color: ColorConstants.primaryBlack),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        Database.ProfilDetailes["no_of_following"],
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: ColorConstants.primaryBlack),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                            fontSize: 15, color: ColorConstants.primaryBlack),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Text(
              Database.ProfilDetailes["user_name"],
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: ColorConstants.primaryBlack),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "@ ${Database.ProfilDetailes["user_id"]}",
                      style: TextStyle(
                          fontSize: 14,
                          color: ColorConstants.primaryBlack,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Professional dashboard",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: ColorConstants.primaryBlack),
                    ),
                    Text(
                      "306 accountd reached in the last 30 days",
                      style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      color: Colors.grey[300],
                      height: 30,
                      width: 173,
                      child: Center(
                        child: Text("Edit Profile"),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    height: 30,
                    width: 173,
                    child: Center(
                      child: Text("Share Profile"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  Database.profilePhotos.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        radius: 34,
                        backgroundColor: ColorConstants.primaryWhite,
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage:
                              AssetImage(Database.profilePhotos[index]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
