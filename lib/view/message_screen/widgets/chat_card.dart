import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key, required this.title, required this.profilPhoto});
  final String title;
  final String profilPhoto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(profilPhoto),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Row(
                    children: [
                      Text("subTitle"),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("."),
                      ),
                      Text("33 m")
                    ],
                  )
                ],
              )
            ],
          ),
          Icon(Icons.camera_alt_outlined)
        ],
      ),
    );
  }
}
