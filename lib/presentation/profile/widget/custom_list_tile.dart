import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatelessWidget {
  final String label;
  final VoidCallback? func;
  final String? trailing;
  const CustomListTile({Key? key, required this.label, required this.func,this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                bottom: BorderSide(color: Colors.grey.withOpacity(0.1)))),
        child: ListTile(
          onTap: func,
          title: Text(
            label,
            style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
          ),
          trailing: trailing != null ? Text(
                    trailing!,
                    style: GoogleFonts.lato(
                        fontSize: 14, color: const Color(0xFF3212F1)),
                  ): null,
        ),
      ),
    );
  }
}
