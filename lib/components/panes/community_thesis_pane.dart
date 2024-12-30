import 'package:flutter/material.dart';
import 'package:thesis_desktop_app/components/cards/coin_card.dart';
import 'package:thesis_desktop_app/components/cards/thesis_card.dart';

import '../../constants/margins/margins.dart';
import '../../constants/text_styles/coin_title_style.dart';
import '../texts/copy_text_button.dart';

class CommunityThesisPane extends StatelessWidget{
  CommunityThesisPane({super.key});


  


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Margins.toEdgeInsets(Margins.primaryMargin),
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return ThesisCard("UBC", "9psiRdn9cXYVps4F1kFuoNjd2EtmqNJXrCPmRppJpump", "Buy the coin. That is the thesis");
        }
        ),
    );
  }
  
}