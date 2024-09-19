import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_ui/helpers/logger.dart';
import 'package:parkcar_ui/models/parking.dart';
import 'package:parkcar_ui/theme/app_pallete.dart';
import 'package:parkcar_ui/widgets/container_widget.dart';
import 'package:parkcar_ui/widgets/icon_text_widget.dart';

class ParkingWidget extends StatefulWidget {
  const ParkingWidget({super.key});

  @override
  State<ParkingWidget> createState() => _ParkingWidgetState();
}

class _ParkingWidgetState extends State<ParkingWidget> {
  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'Nearby\nParking Spots',
      actionText: 'View All',
      onTap: () {
        logger.d('clicked');
      },
      child: SizedBox(
        height: 200,
        child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return ParkingItem(park: parks[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Gap(16);
            },
            itemCount: parks.length),
      ),
    );
  }
}

class ParkingItem extends StatefulWidget {
  final Parking park;

  const ParkingItem({super.key, required this.park});

  @override
  State<ParkingItem> createState() => _ParkingItemState();
}

class _ParkingItemState extends State<ParkingItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: 200,
      decoration: BoxDecoration(
        color: AppPallet.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image(),
          const Gap(12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.park.title,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppPallet.colorPrimaryDark,
                ),
              ),
              const Gap(8),
              SizedBox(
                width: 170, // Ensure this is constrained to the width you want
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconTextWidget(
                      icon: 'assets/svgs/routing.svg',
                      text: widget.park.distance,
                    ),
                    IconTextWidget(
                      icon: 'assets/svgs/dollar.svg',
                      text: widget.park.price,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container image() {
    return Container(
      height: 100,
      width: 170,
      padding: const EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(14),
        image: DecorationImage(
          image: AssetImage(widget.park.image),
          fit: BoxFit.cover,
        ),
      ),
      child: widget.park.type != null && widget.park.typeTxt != null
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                color: widget.park.type == ParkingType.discount
                    ? AppPallet.colorPink
                    : AppPallet.colorPrimary,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                widget.park.typeTxt!.toUpperCase(),
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: AppPallet.white,
                ),
              ),
            )
          : null,
    );
  }
}
