import 'package:flutter/material.dart';
import 'package:instagram_clone/database/database.dart';
import 'package:instagram_clone/utils/color_constant/color_constants.dart';
import 'package:instagram_clone/view/home_page/widgets/story_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_outlined,
                color: ColorConstants.primaryBlack,
                size: 30,
              )),
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(right: 12, top: 15),
              child: Image(
                image: const AssetImage("assets/images/messenger.png"),
                height: 26,
                width: 26,
                color: ColorConstants.primaryBlack,
              ),
            ),
            const Positioned(
                right: 8,
                top: 8,
                child: CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.red,
                  child: Text(
                    "10",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ))
          ])
        ],
        title: SizedBox(
          height: 35,
          child: Image.asset(
            "assets/images/Instagram Logo.png",
            color: ColorConstants.primaryBlack,
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  Database.userDetailes.length,
                  (index) => StoryCard(index: index),
                ),
              ),
            ),
            Container(
              height: 600,
              width: double.infinity,
              color: Colors.grey,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text("Aslam"),
                    subtitle: Text("Tokiyo ,Japan"),
                    trailing: Icon(Icons.more_vert),
                  ),
                  Container(
                    height: 375,
                    width: double.infinity,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.favorite_border,
                        size: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/images/bubble-chat.png",
                        height: 32,
                        width: 32,
                        color: ColorConstants.primaryBlack,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/images/send.png",
                        height: 32,
                        width: 32,
                        color: ColorConstants.primaryBlack,
                      ),
                      SizedBox(
                        width: 230,
                      ),
                      Icon(
                        Icons.bookmark_border,
                        size: 35,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
