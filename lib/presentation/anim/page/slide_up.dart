import 'package:flutter/material.dart';

// ignore: always_specify_types
class SlideUpAnim extends PageRouteBuilder {
  final Widget page;
  SlideUpAnim({required this.page})
      : super(
            pageBuilder: (BuildContext context, Animation<double> anim1,
                    Animation<double> anim2) =>
                page,
            transitionDuration: const Duration(milliseconds: 600),
            transitionsBuilder: (BuildContext context, Animation<double> anim1,
                Animation<double> anim2, Widget child) {
              Offset first = const Offset(0, 1.0);
              Offset second = Offset.zero;
              Animatable<Offset> tween =
                  Tween<Offset>(begin: first, end: second)
                      .chain(CurveTween(curve: Curves.easeInOutSine));

              Animation<Offset> offset = anim1.drive(tween);
              return SlideTransition(position: offset, child: child);
            });
}
