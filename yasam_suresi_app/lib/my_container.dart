
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color renk;
  final Widget? child;
  final void Function()? onPress;

  MyContainer({this.renk = Colors.white, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: renk,
          borderRadius: BorderRadius.circular(15),
        ),
        child: child,
      ),
    );
  }
}