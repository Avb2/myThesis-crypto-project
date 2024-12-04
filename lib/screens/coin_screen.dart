import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:thesis_desktop_app/components/appbars/custom_app_bar.dart';

class CoinScreen extends StatefulWidget{
  @override
  CoinScreenState createState() => CoinScreenState();
  }
  
  class CoinScreenState extends State<CoinScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body:  Column(
        children: [

          Container(
            alignment: Alignment.center,
            child: Text("Coin Name")
            ),



            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>  Card(child:Text("Popular post")),
                ),
              ),
            ),




            Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index){
                return Card(
                  child: Text(index.toString()),
                );
              })
              )



          




        ],
      )
    );
  }
  }

