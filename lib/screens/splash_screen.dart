



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:thesis_desktop_app/components/textfields/textfield1.dart';
import 'package:thesis_desktop_app/constants/text_styles/home_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [

          Container(
            alignment: Alignment.topLeft,
            child: TextButton(
              onPressed: (){},
               child: Text("Register")
               ,
               
               ),
          ),


             
          Container(
        margin: EdgeInsets.all(40),
      child: Text(
        "myThesis",
        style: HomeTextStyle.labelStyle(),
        ),
        alignment: Alignment.topCenter,
    ),

    Container(
      child: Column(
        children: [

    TextField1("Login"),
    TextField1("Password"),
        ],
      ),
    ),


    TextButton(
  child: const Text("Login"),
  onPressed: () {
    Navigator.pushNamedAndRemoveUntil(
      context,
      "/home",
      (Route<dynamic> route) => false

      );
  },
),


 TextButton(
  child: const Text("Forgot Password"),
  onPressed: () {
    // ...
  },
),



  
    
        ],
      )
      );
  }



  
}
