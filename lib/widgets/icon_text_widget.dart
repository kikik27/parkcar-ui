import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_ui/theme/app_pallete.dart';

class IconTextWidget extends StatefulWidget {
  final String icon;
  final String text;
  const IconTextWidget({super.key, required this.icon, required this.text});

  @override
  State<IconTextWidget> createState() => _IconTextWidgetState();
}

class _IconTextWidgetState extends State<IconTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          widget.icon,
          colorFilter:
              const ColorFilter.mode(AppPallet.colorSecondary, BlendMode.srcIn),
        ),
        const Gap(4),
        Text(
          widget.text,
          style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppPallet.colorTextSecondary),
        )
      ],
    );
  }
}
