import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String label;
  final IconData iconName;
  final bool isSelected;

  const NavBarItem({
    required this.label,
    required this.iconName,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: AnimatedOpacity(
            opacity: isSelected ? 1 : 0,
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 600),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color(0xFFE3F6FD),
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ),
        NavigationDestination(
          icon: Icon(
            iconName,
            color: const Color.fromARGB(255, 39, 37, 37),
          ),
          label: '',
        ),
      ],
    );
  }
}
