import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  late final Function()? onTap;
  final Widget child;
  final double? height, width;
  final Color? color;

  CustomContainer({required this.child, this.height, this.width, this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.all(Radius.circular(8))),
        child: child,
      ),
    );
  }
}
