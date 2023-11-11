import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({super.key, required this.ProfilePhoto, required this.Name});

  final String ProfilePhoto;
  final String Name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage:
                const AssetImage("assets/images/instagram (1).png"),
            child: CircleAvatar(
              radius: 42,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 38,
                backgroundImage: AssetImage(ProfilePhoto),
              ),
            ),
          ),
          Text(Name)
        ],
      ),
    );
  }
}
