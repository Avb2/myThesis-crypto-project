import 'package:flutter/material.dart';

import '../cards/coin_card.dart';



class CommunityPane extends StatelessWidget{
  CommunityPane({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:  20,
        itemBuilder: (context, index) {
           return CoinCard(
            "UBC",
            "9psiRdn9cXYVps4F1kFuoNjd2EtmqNJXrCPmRppJpump"
           );
           }
        );
  }
  
}