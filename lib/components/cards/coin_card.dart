import 'package:flutter/material.dart';

import '../../constants/margins/margins.dart';
import '../../constants/text_styles/coin_title_style.dart';
import '../../constants/text_styles/sub_title_style.dart';
import '../texts/copy_text_button.dart';

class CoinCard extends StatefulWidget{
  @override
  CoinCardState createState() => CoinCardState();
  

}





class CoinCardState extends State<CoinCard> {
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
                            "\$UBC",
                            style: CoinTitleStyle.labelStyle(),
                            )
                          ),
                        
                          // Contract address
                          Container(
                          alignment: Alignment.topLeft,
                          child: CopyTextButton("HAJJ13iSHDJ29402JDDPUMP", (){})
                            )
                          
                      ],
                    ),
                  ),
                    


                  
                  Padding(
                    padding: EdgeInsets.only(bottom: Margins.primaryMargin),
                    child: Image.asset("assets/images/harryPepe.png",
                    width: 150,
                    height: 150,),
                  ),
            
                    Container(
                        decoration: BoxDecoration(
                            border: Border(
                          top: BorderSide(
                            //                   <--- right side
                            color: Colors.black,
                            width: 3.0,
                          ),
                        )),
                        padding: EdgeInsets.symmetric(
                            vertical: Margins.primaryMargin),
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.height / 1.25,
                        child: Text(
                            "GlimmerCoin is a revolutionary cryptocurrency designed for intergalactic trade (and possibly your favorite coffee shop). With its blazing-fast transaction speeds and eco-friendly proof-of-light consensus, GlimmerCoin shines as a beacon of hope in the blockchain universe. Minted on the SolarChain network, every GLM token reflects the shimmer of innovation and a sprinkle of stardust."))
            
                ],
              ),
            ),
          )
    );
  }
  
}




