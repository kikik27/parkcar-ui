import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_ui/widgets/button_widget.dart';

class ContainerWidget extends StatefulWidget {
  final String title;
  final Widget child;
  final String? actionText;
  final VoidCallback? onTap;
  const ContainerWidget(
      {super.key,
      required this.title,
      required this.child,
      this.actionText,
      this.onTap});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [header(), const Gap(18), widget.child],
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            widget.title,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Spacer(),
          widget.actionText != null
              ? ButtonWidget(title: widget.actionText!, onTap: widget.onTap!)
              : Container()
        ],
      ),
    );
  }
}
