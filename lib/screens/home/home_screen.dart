import 'package:flutter/material.dart';
import 'package:we/screens/home/widgets/douars_list.dart';
import 'package:we/screens/home/widgets/home_app_bar.dart';
import 'package:we/screens/home/widgets/douar_list.dart';
import 'package:we/screens/home/widgets/search_card.dart';
import 'package:we/screens/home/widgets/tag_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //HomeAPpBar(),
                SearchCard(),
                TagsList(),
                Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: DouarsList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}