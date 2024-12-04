import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:thesis_desktop_app/components/appbars/custom_app_bar.dart';
import 'package:thesis_desktop_app/constants/text_styles/coin_title_style.dart';
import 'package:thesis_desktop_app/constants/text_styles/sub_title_style.dart';

import '../components/cards/coin_card.dart';
import '../constants/margins/margins.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;


    return Scaffold(
      appBar: CustomAppBar(),

      body: Column(
        children: [


          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width / 12),
            padding: EdgeInsets.only(bottom: 30),
            alignment: Alignment.centerLeft,
            child: Text(
              "Avb2",
              style: SubtitleStyle.labelStyle(),
              )
            ),




            Container(
              child: Column(
                children: [
                  Text(
                    "Cred",
                    style: CoinTitleStyle.labelStyle(),
                    ),
                  Text(
                    args["credPoints"].toString(),
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellowAccent
                    ),
                    )
                ],
              ),
            ),



            



                    
                  Container(
                    height: MediaQuery.of(context).size.height / 1.3,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Column(
                      children: [
                        Container(
              child: Expanded(
                child: Column(
                  children: [

                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Posts",
                        style: CoinTitleStyle.labelStyle(),
                      ),
                    ),
                
                   
                          Expanded(
                            child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index){
                              return CoinCard();
                            }
                            ),
                          ),
                      ],
                      
                      ),
              ),
                  ),
                ],
              ),
            )





        ],
      ),
      


    );
  }

}