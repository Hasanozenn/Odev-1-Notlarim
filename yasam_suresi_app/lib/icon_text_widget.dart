import 'package:flutter/material.dart';
import 'package:yasam_suresi_app/constants.dart';

class IconTextWidget extends StatelessWidget {

  final String? cinsiyet;
  final IconData? icon;

  IconTextWidget({this.cinsiyet, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
            color: Colors.black54, size: 30),
            SizedBox(height: 15),
        Text(
          "$cinsiyet",
          style: kmetinStili,
        )
      ],
    );
  }
}