



import 'package:flutter/material.dart';
import 'package:thesis_desktop_app/components/cards/coin_card.dart';
import 'package:thesis_desktop_app/components/texts/copy_text_button.dart';
import 'package:thesis_desktop_app/constants/margins/margins.dart';
import 'package:thesis_desktop_app/constants/text_styles/coin_title_style.dart';

import '../components/appbars/custom_app_bar.dart';




class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();

  
}



class HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView.builder(
        itemCount:  20,
        itemBuilder: (context, index) {
          // TODO add thit to Components.CoinCard
           return CoinCard();
           }
        ),
    );
  }
  
}