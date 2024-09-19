import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_ui/helpers/logger.dart';
import 'package:parkcar_ui/models/category.dart';
import 'package:parkcar_ui/theme/app_pallete.dart';
import 'package:parkcar_ui/widgets/container_widget.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'Browse\nCategories',
      actionText: 'View All',
      onTap: () {
        logger.d('clicked');
      },
      child: SizedBox(
        height: 120, // Set height explicitly for horizontal scrolling
        child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return CategoryItem(category: categories[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Gap(16);
            },
            itemCount: categories.length),
      ),
    );
  }
}

class CategoryItem extends StatefulWidget {
  final Category category;

  const CategoryItem({super.key, required this.category});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: 120,
      decoration: BoxDecoration(
        color: AppPallet.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            widget.category.icon,
            width: 50,
            height: 50,
          ),
          const Gap(8),
          Text(
            widget.category.name,
            style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppPallet.colorPrimaryDark),
          )
        ],
      ),
    );
  }
}
