import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyText extends StatelessWidget{
  final String data;
  const CopyText(this.data, {super.key});


  @override
  Widget build(BuildContext context) {
   return Row(
    children: [
      Text(data),
      IconButton(
        onPressed: (){
            // Copy text to clipboard
            Clipboard.setData(ClipboardData(text: data));
            final snackBar =  SnackBar(
              duration: Duration(milliseconds: 750),
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