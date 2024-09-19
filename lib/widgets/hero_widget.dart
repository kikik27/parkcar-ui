import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_ui/theme/app_pallete.dart';

class HeroWidget extends StatefulWidget {
  const HeroWidget({super.key});

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [content(), image(), search()],
    );
  }

  Container content() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 64, top: 76),
      color: AppPallet.colorPrimaryDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/kkk.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              const Gap(12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy',
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppPallet.colorTextSecondary),
                  ),
                  const Gap(2),
                  Text('M. Zaky Arisandhi',
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppPallet.white))
                ],
              )
            ],
          ),
          const Gap(24),
          Text(
            'Get Your\nSecure Park',
            style: GoogleFonts.plusJakartaSans(
                fontSize: 32,
                fontWeight: FontWeight.w800,
                height: 1,
                color: AppPallet.white),
          )
        ],
      ),
    );
  }

  Widget image() {
    return Positioned(
      width: 180,
      bottom: 48,
      right: 0,
      child: Image.asset(
        'assets/images/hero.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget search() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: const Color(0xFF070625).withOpacity(.06),
                blurRadius: 20,
                offset: const Offset(0, 10))
          ]),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            cursorColor: AppPallet.colorPrimary,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppPallet.white,
              hintText: 'Search by name or city area',
              hintStyle: GoogleFonts.plusJakartaSans(
                fontSize: 16,
              ),
              enabledBorder: border(),
              focusedBorder: border(),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              suffixIcon: Align(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: SvgPicture.asset('assets/svgs/search.svg')),
            ),
          ),
        ));
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(50), borderSide: BorderSide.none);
  }
}
