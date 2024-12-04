

import 'package:flutter/material.dart';

import '../../constants/margins/margins.dart';
import '../../constants/text_styles/coin_title_style.dart';
import '../texts/copy_text_button.dart';

class CoinInfoComponent extends StatelessWidget{
  String coinName;
  String contractAddress;
  CoinInfoComponent(this.coinName, this.contractAddress);


  @override
  Widget build(BuildContext context) {
     return Column(
                children: [
                   Container(
                    margin: EdgeInsets.all(Margins.primaryMargin),
                    alignment:Alignment.topRight, child: IconButton.outlined(onPressed: (){
                      final snackbar = SnackBar(
                        content: Text("Bookmarked!"),
                        duration: Duration(milliseconds: 750),
                        );
                       ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }, icon: Icon(Icons.bookmark))),


                  Container(
                    margin: Margins.toEdgeInsets(Margins.primaryMargin + 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [




                        Container(
                          margin: EdgeInsets.only(left: 11),
                          // Coin name
                          alignment: Alignment.topLeft,
                          child: Text(
                            coinName,
                            style: CoinTitleStyle.labelStyle(),
                            )
                          ),


                        
                          // Contract address
                          Container(
                          alignment: Alignment.topLeft,
                          child: CopyTextButton(contractAddress, (){})
                            )

                      

                ]))]);
                
  }
  
}