



import 'package:flutter/material.dart';
import 'package:thesis_desktop_app/components/appbars/home_nav_bar.dart';
import 'package:thesis_desktop_app/components/cards/coin_card.dart';
import 'package:thesis_desktop_app/components/panes/community_pane.dart';
import 'package:thesis_desktop_app/components/texts/copy_text_button.dart';
import 'package:thesis_desktop_app/constants/margins/margins.dart';
import 'package:thesis_desktop_app/constants/text_styles/coin_title_style.dart';

import '../components/appbars/custom_app_bar.dart';
import '../components/panes/community_thesis_pane.dart';




class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();

  
}



class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: HomeNavBar(tabController),
      body: TabBarView(
        controller: tabController,
        children: [
          CommunityPane(),
          CommunityThesisPane()
        ]
      ),
    );
  }
  
}