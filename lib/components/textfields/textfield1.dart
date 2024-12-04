import 'package:flutter/material.dart';
import 'package:thesis_desktop_app/constants/sizes/field_widths.dart';

import '../../constants/margins/margins.dart';


class TextField1 extends StatelessWidget {
  final String label;

  const TextField1(this.label, {super.key});


  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Container(
      margin: EdgeInsets.all(Margins.primaryMargin),
      width: FieldWidths.largeFieldWidth,
      height: FieldWidths.largeFieldHeight,
      child: TextField(
        
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black
              )
          )
        ),
      ),
    );
  }
  
}