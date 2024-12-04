import 'package:flutter/material.dart';

import 'package:thesis_desktop_app/components/misc/coin_info.dart';

import '../../constants/margins/margins.dart';

class CoinCard extends StatefulWidget {
  String coinName;
  String contractAddress;

  CoinCard(
    this.coinName,
    this.contractAddress,
    {super.key}
  );


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


                  CoinInfoComponent(widget.coinName, widget.contractAddress),


                  
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




