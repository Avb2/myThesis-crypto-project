import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyTextButton extends StatelessWidget{
  final String data;
  final Function onPressed;
  const CopyTextButton(this.data, this.onPressed, {super.key});


  @override
  Widget build(BuildContext context) {
   return Row(
    children: [


      TextButton(
        onPressed: () => onPressed(),

        child: Text(data)),



      IconButton(
        onPressed: (){
            // Copy text to clipboard
            Clipboard.setData(ClipboardData(text: data));

             final snackBar =  SnackBar(
              duration: const Duration(milliseconds: 7502),
              content: Text("Copied!"),
            );

             ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        icon: Icon(
          Icons.copy,
          size: 15,
          ))



    ],
   );
  }
  
}