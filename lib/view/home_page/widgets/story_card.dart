import 'package:flutter/material.dart';

import '../../../database/database.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({super.key, required this.index});

  final int index;

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
                backgroundImage:
                    AssetImage(Database.userDetailes[index]['ProfilePhoto']),
              ),
            ),
          ),
          Text(Database.userDetailes[index]['Name'])
        ],
      ),
    );
  }
}
