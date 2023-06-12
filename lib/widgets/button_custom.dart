import 'package:flutter/material.dart';

class ElevatedButtonCustom extends StatelessWidget {
    final VoidCallback onPressed;
    final double width;
    final double height;
    final Widget child;
    final Color? color;
    final Color buttonBorder;
    final double borderRadius;
  const ElevatedButtonCustom({
   required this.onPressed,

    Key? key, this.width=40, this.height=30, required this.child,  this.color=Colors.black,this.borderRadius=16, this.buttonBorder = Colors.transparent
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            fixedSize: Size(width, height),
            
            shape: RoundedRectangleBorder(side: BorderSide(color: buttonBorder),
                borderRadius: BorderRadius.circular(borderRadius))),
        onPressed: onPressed,
        child:child);
  }
}