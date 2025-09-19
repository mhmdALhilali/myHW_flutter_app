
import 'package:flutter/material.dart';
import 'custom_container.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final Color? color;

  CustomButton({required this.onTap,required  this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      onTap: onTap,
      color: color ?? Colors.blue,
      child: Center(child: Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
    );
  }
}

