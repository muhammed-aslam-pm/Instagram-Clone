import 'package:flutter/material.dart';
import 'package:instagram_clone/view/home_page/home_page.dart';
import 'package:instagram_clone/view/message_screen/message_screen.dart';

class HomeScreenPages extends StatelessWidget {
  const HomeScreenPages({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [HomePage(), MessageScreen()],
      controller: PageController(initialPage: 0),
    );
  }
}
