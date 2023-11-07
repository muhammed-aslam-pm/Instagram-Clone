import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/color_constant/color_constants.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.close,
                      color: ColorConstants.primaryBlack,
                      size: 35,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "New Post",
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.primaryBlack,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 165),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 375,
                width: double.infinity,
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey[800],
                          child: Icon(
                            Icons.open_in_full,
                            color: ColorConstants.primaryWhite,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Recent",
                            style: TextStyle(
                                fontSize: 16,
                                color: ColorConstants.primaryBlack,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.expand_more,
                            color: ColorConstants.primaryBlack,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.filter_none,
                                    size: 18,
                                    color: ColorConstants.primaryWhite,
                                  ),
                                  Text(
                                    "SELECT MULTIPLE",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorConstants.primaryWhite,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.grey,
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: ColorConstants.primaryWhite,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                itemCount: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
