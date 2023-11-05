import 'package:flutter/material.dart';
import 'package:instagram_clone/database/database.dart';
import 'package:instagram_clone/utils/color_constant/color_constants.dart';

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
              )),
          const Stack(children: [
            Padding(
              padding: EdgeInsets.only(right: 12, top: 15),
              child: Image(
                image: AssetImage("assets/images/messenger.png"),
                height: 23,
                width: 23,
              ),
            ),
            Positioned(
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
        title: Image.asset("assets/images/Instagram Logo.png"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                Database.userDetailes.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            const AssetImage("assets/images/instagram (1).png"),
                        child: CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 29,
                            backgroundImage: AssetImage(
                                Database.userDetailes[index]['ProfilePhoto']),
                          ),
                        ),
                      ),
                      Text(Database.userDetailes[index]['Name'])
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
