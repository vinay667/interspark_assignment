import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('images/car_dumm.jpg'),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}