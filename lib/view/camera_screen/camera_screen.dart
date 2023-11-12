import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/color_constant/color_constants.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryBlack,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsetsDirectional.all(20),
              width: double.infinity,
              height: 570,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.close,
                        color: ColorConstants.primaryWhite,
                        size: 35,
                      ),
                      Icon(
                        Icons.flash_off_outlined,
                        color: ColorConstants.primaryWhite,
                        size: 35,
                      ),
                      Icon(
                        Icons.settings,
                        color: ColorConstants.primaryWhite,
                        size: 35,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 38,
                        backgroundColor: ColorConstants.primaryWhite,
                        child: CircleAvatar(
                          radius: 34,
                          backgroundColor: ColorConstants.primaryBlack,
                          child: CircleAvatar(
                            radius: 32,
                            backgroundColor: ColorConstants.primaryWhite,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryWhite,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Row(
                    children: [
                      Text(
                        "Post",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Story",
                        style: TextStyle(
                            color: ColorConstants.primaryWhite,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Reels",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.restart_alt,
                    color: ColorConstants.primaryWhite,
                    size: 30,
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
