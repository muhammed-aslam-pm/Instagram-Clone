import 'package:flutter/material.dart';

import '../../../utils/color_constant/color_constants.dart';

class OnlineUsersCard extends StatelessWidget {
  const OnlineUsersCard(
      {super.key, required this.profilePhoto, required this.name});
  final String profilePhoto;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
                image: DecorationImage(image: AssetImage(profilePhoto))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: ColorConstants.primaryWhite,
                  child: const CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
          ),
          Text(name)
        ],
      ),
    );
  }
}
