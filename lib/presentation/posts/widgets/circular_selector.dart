import 'package:flutter/material.dart';

class CircularSelector extends StatelessWidget {
  final String number;
  final Color color;
  final Color borderColor;
  final Function()? onTapFunc;
  const CircularSelector(
      {Key? key,
      required this.number,
      required this.color,
      required this.borderColor,
      required this.onTapFunc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunc,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: Border.all(color: borderColor)),
        child: Center(
          child: Text(number,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 13,fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
