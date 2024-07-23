import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class SkipButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text('skip', style: TextStyle(color: Colors.grey),),
    style: ElevatedButton.styleFrom(
      backgroundColor: HexColor('#EBF0F8'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(color: Colors.grey, width: 2.0),
      ),
      fixedSize: Size(83, 49),
    ),);
  }
}