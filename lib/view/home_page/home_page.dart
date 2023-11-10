import 'package:flutter/material.dart';
import 'package:instagram_clone/database/database.dart';
import 'package:instagram_clone/utils/color_constant/color_constants.dart';
import 'package:instagram_clone/view/home_page/widgets/post_card.dart';
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
              ),
            )
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
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Column(
                  children: [
                    Container(
                      height: 84,
                      width: 84,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage(
                                  Database.ProfilDetailes["profile_photo"]))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: ColorConstants.primaryWhite,
                            child: CircleAvatar(
                              radius: 12,
                              child: Icon(Icons.add),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text("Your Story")
                  ],
                ),
                Row(
                  children: List.generate(
                    Database.userDetailes.length,
                    (index) => StoryCard(
                        Name: Database.userDetailes[index]["Name"],
                        ProfilePhoto: Database.userDetailes[index]
                            ["ProfilePhoto"]),
                  ),
                )
              ]),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => PostCard(
                name: Database.feed[index]["Name"],
                location: Database.feed[index]["Location"],
                dp: Database.feed[index]["ProfilePhoto"],
                photo: Database.feed[index]["Image"],
                description: Database.feed[index]["Description"],
                likes: Database.feed[index]["Likes"],
                comments: Database.feed[index]["Comments"],
                time: Database.feed[index]["Time"],
              ),
              itemCount: Database.feed.length,
            )
          ],
        ),
      ),
    );
  }
}
