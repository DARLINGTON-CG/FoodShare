import 'package:flutter/material.dart';

class SignContainer extends StatelessWidget {
  final String displayText;
  final bool isOutlined;
  final Function() onPressedCallback;
  const SignContainer({
    required this.displayText,
    required this.isOutlined,
    required this.onPressedCallback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressedCallback,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
            color: isOutlined ? Colors.transparent : const Color(0xFF3212F1),
            border:
                isOutlined ? Border.all(color: const Color(0xFF3212F1)) : null,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          displayText,
          //Check for dark or light mode
          style: isOutlined
              ? Theme.of(context).textTheme.headline4
              : Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
