import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/color_constant/color_constants.dart';
import 'package:instagram_clone/view/message_screen/widgets/chat_card.dart';
import 'package:instagram_clone/view/message_screen/widgets/online_uesers_card.dart';

import '../../database/database.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryWhite,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryWhite,
        elevation: 0,
        iconTheme: IconThemeData(
          color: ColorConstants.primaryBlack,
        ),
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
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          IconButton(onPressed: () {}, icon: Icon(Icons.auto_graph_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.edit_square))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(15)),
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.search, color: Colors.grey[800]),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Search",
                              style: TextStyle(color: Colors.grey[800]),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                  TextButton(onPressed: () {}, child: Text("Filter"))
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    Database.userDetailes.length,
                    (index) => OnlineUsersCard(
                        profilePhoto: Database.userDetailes[index]
                            ["ProfilePhoto"],
                        name: Database.userDetailes[index]["Name"])),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Database.userDetailes.length,
                itemBuilder: (context, index) => ChatCard(
                    title: Database.userDetailes[index]["Name"],
                    profilPhoto: Database.userDetailes[index]["ProfilePhoto"]))
          ],
        ),
      ),
    );
  }
}
