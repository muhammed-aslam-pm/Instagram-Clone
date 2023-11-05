import 'package:flutter/material.dart';

import '../../../utils/color_constant/color_constants.dart';

class PostCard extends StatelessWidget {
  const PostCard(
      {super.key,
      required this.name,
      required this.location,
      required this.dp,
      required this.photo,
      required this.description,
      required this.likes,
      required this.comments,
      required this.time});

  final String name;
  final String location;
  final String dp;
  final String photo;
  final String description;
  final int likes;
  final int comments;
  final int time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 54,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(dp),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 54,
                    width: 320,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                location,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          Icon(Icons.more_vert_outlined)
                        ]),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 375,
            width: double.infinity,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(photo), fit: BoxFit.cover),
            ),
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
                size: 33,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/bubble-chat.png",
                height: 30,
                width: 30,
                color: ColorConstants.primaryBlack,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/send.png",
                height: 30,
                width: 30,
                color: ColorConstants.primaryBlack,
              ),
              SizedBox(
                width: 220,
              ),
              Icon(
                Icons.bookmark_border,
                size: 35,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("$likes likes"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text("$name $description"),
          ),
          TextButton(
              style: ButtonStyle(
                foregroundColor:
                    MaterialStatePropertyAll(ColorConstants.primaryBlack),
              ),
              onPressed: () {},
              child: Text("View all $comments Comments")),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "$time mintes ago",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
