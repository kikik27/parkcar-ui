import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_ui/helpers/logger.dart';
import 'package:parkcar_ui/theme/app_pallete.dart';
import 'package:parkcar_ui/widgets/button_widget.dart';
import 'package:parkcar_ui/widgets/container_widget.dart';

class ProgressWidget extends StatefulWidget {
  const ProgressWidget({super.key});

  @override
  State<ProgressWidget> createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'In Progress Parking to',
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
            color: AppPallet.colorPrimary,
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: AssetImage('assets/images/bg_in_progress.png'),
                fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                  color: AppPallet.colorPrimary.withOpacity(.4),
                  blurRadius: 24,
                  offset: const Offset(0, 10))
            ]),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/svgs/grid.svg',
              height: 26,
              width: 26,
            ),
            const Gap(12),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Galeria Mall YK',
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: AppPallet.white),
              ),
              Text(
                '500 m',
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppPallet.white),
              )
            ]),
            const Spacer(),
            ButtonWidget(
              onTap: () {
                logger.i('check');
              },
              title: 'Open Maps',
            )
          ],
        ),
      ),
    );
  }
}
