import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:task/config/size_config.dart';

class ContainerInfo extends StatelessWidget {
  const ContainerInfo({
    super.key,
    required this.text,
    required this.info,
  });

  final String text;
  final bool info;

  @override
  Widget build(BuildContext context) {
    double w = SizeConfig.getWidth(context);
    double h = SizeConfig.getHeight(context);
    return Center(
      child: SizedBox(
        width: w * .9,
        height: h * .05,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: GoogleFonts.nunito(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            info
                ? const Icon(
                    Icons.info_outline,
                    color: Color(0xffDDDDDD),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
