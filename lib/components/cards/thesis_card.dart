import 'package:flutter/material.dart';

import '../../constants/margins/margins.dart';
import '../misc/coin_info.dart';





class ThesisCard extends StatefulWidget{
  String coinName;
  String contractAddress;

  ThesisCard(this.coinName, this.contractAddress, {super.key});
  
  @override
  ThesisCardState createState() => ThesisCardState();
}





class ThesisCardState extends State<ThesisCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/coin/home");
      },
      child: Container(
            margin: Margins.toEdgeInsets(Margins.primaryMargin),
            child: Card(
              child: Column(
                children: [
                  CoinInfoComponent(widget.coinName, widget.contractAddress)
                ],
              )
            ),
                
    ));
  }
  
}




