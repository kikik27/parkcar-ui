import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_ui/theme/app_pallete.dart';

class ButtonWidget extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  const ButtonWidget({super.key, required this.title, required this.onTap});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      style: ElevatedButton.styleFrom(
          foregroundColor: AppPallet.colorPrimaryDark,
          backgroundColor: AppPallet.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12)),
      child: Text(
        widget.title,
        style: GoogleFonts.plusJakartaSans(
            fontSize: 14, fontWeight: FontWeight.w600),
      ),
    );
  }
}
