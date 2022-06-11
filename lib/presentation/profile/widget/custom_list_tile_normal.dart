import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTileNormal extends StatelessWidget {
  final String label;
  final VoidCallback? func;
  final String? trailing;
  final bool? showListTile;
  const CustomListTileNormal(
      {Key? key, required this.label, required this.func, this.trailing,this.showListTile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 40,
        child: ListTile(
          onTap: func,
          title: Text(
            label,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          trailing: trailing != null
              ? Text(
                  trailing!,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                      fontSize: 14, color: const Color(0xFF3212F1)),
                )
              : null,
        ),
     
    );
  }
}
