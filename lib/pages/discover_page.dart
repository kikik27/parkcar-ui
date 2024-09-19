import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:parkcar_ui/widgets/category_widget.dart';
import 'package:parkcar_ui/widgets/hero_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_ui/theme/app_pallete.dart';
import 'package:parkcar_ui/widgets/parking_widget.dart';
import 'package:parkcar_ui/widgets/progress_widget.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(),
            Gap(20),
            ProgressWidget(),
            Gap(20),
            ParkingWidget(),
            Gap(20),
            CategoryWidget(),
            Gap(20),
          ],
        ),
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppPallet.white,
        selectedItemColor: AppPallet.colorPrimary,
        unselectedItemColor: AppPallet.colorSecondary,
        showSelectedLabels: true,
        selectedLabelStyle: GoogleFonts.plusJakartaSans(
            fontSize: 12, fontWeight: FontWeight.bold),
        unselectedLabelStyle: GoogleFonts.plusJakartaSans(
            fontSize: 12, fontWeight: FontWeight.w600),
        items: [
          bottomNavigationBarItem(
              icon: 'assets/svgs/grid.svg', label: "Discover"),
          bottomNavigationBarItem(
              icon: 'assets/svgs/orders.svg', label: "Orders"),
          bottomNavigationBarItem(
              icon: 'assets/svgs/wallet.svg', label: "Wallet"),
          bottomNavigationBarItem(
              icon: 'assets/svgs/setting.svg', label: "Setting"),
        ],
      );

  BottomNavigationBarItem bottomNavigationBarItem(
      {required String label, required String icon}) {
    return BottomNavigationBarItem(
        icon: SvgPicture.asset(
          icon,
          colorFilter:
              const ColorFilter.mode(AppPallet.colorPrimary, BlendMode.srcIn),
        ),
        label: label);
  }
}
