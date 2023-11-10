import 'package:flutter/material.dart';

import '../../utils/color_constant/color_constants.dart';
import '../../utils/image_constant/image_constant.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: PageView.builder(
      itemCount: 5,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsetsDirectional.all(20),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/reels 1.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "reels",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.primaryWhite),
                    ),
                    Icon(
                      Icons.expand_more_rounded,
                      size: 30,
                      color: ColorConstants.primaryWhite,
                    ),
                  ],
                ),
                Icon(
                  Icons.camera_alt_outlined,
                  size: 30,
                  color: ColorConstants.primaryWhite,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 30,
                  color: ColorConstants.primaryWhite,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "157K",
                  style: TextStyle(
                      fontSize: 15, color: ColorConstants.primaryWhite),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  ImageConstant.commentsButton,
                  height: 30,
                  width: 30,
                  color: ColorConstants.primaryWhite,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "10.2K",
                  style: TextStyle(
                      fontSize: 15, color: ColorConstants.primaryWhite),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  ImageConstant.shareButton,
                  height: 30,
                  width: 30,
                  color: ColorConstants.primaryWhite,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "15.7K",
                  style: TextStyle(
                      fontSize: 15, color: ColorConstants.primaryWhite),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "user_id",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: ColorConstants.primaryWhite),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              border: BoxBorder.lerp(
                                  Border.all(),
                                  Border.all(
                                      color: ColorConstants.primaryWhite),
                                  5),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Follow",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: ColorConstants.primaryWhite),
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.more_vert_outlined,
                      size: 30,
                      color: ColorConstants.primaryWhite,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "kjbasdjhbjhsbdjbfdjhbhjbfjjh fhjdb jd kasndkj hsdfh huasd fb eduhewg  dgegf uef ",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: ColorConstants.primaryWhite),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(60, 241, 237, 237),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.music_note_rounded,
                            color: ColorConstants.primaryWhite,
                          ),
                          Text(
                            " music_no_1",
                            style: TextStyle(
                                fontSize: 14,
                                color: ColorConstants.primaryWhite,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryWhite,
                          borderRadius: BorderRadiusDirectional.circular(5)),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
