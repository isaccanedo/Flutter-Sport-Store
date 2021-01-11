import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double height, minWidth, borderRadius;
  final void Function() onPressed;
  final BorderSide borderSide;
  const ReusableButton({
    Key key,
    @required this.child,
    this.color,
    this.height,
    this.minWidth,
    this.borderRadius = 5,
    @required this.onPressed,
    this.borderSide = BorderSide.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      // padding: ,
      height: height,
      minWidth: minWidth,
      child: child,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: borderSide,
      ),
    );
  }
}
