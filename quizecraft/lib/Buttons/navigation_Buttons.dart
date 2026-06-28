import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationButtons extends StatelessWidget {
  NavigationButtons({
    super.key,
    required this.Bwidth,
    required this.Bheight,
    required this.text,
    required this.textsize,
    required this.onTap,
  });

  double? Bwidth;
  double? Bheight;
  String? text;
  double? textsize;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return
      ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // Important: removes default button padding
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: const BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          elevation: 0, // Replaces your manual BoxShadow
          shadowColor: Colors.black26,
        ),
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26,width: 1),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF4A90E2), Color(0xFF9013FE)],
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            width: Bwidth,
            height: Bheight,
            alignment: Alignment.center,
            child: Text(
              text!,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: textsize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
  }
}
