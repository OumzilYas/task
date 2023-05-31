import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:task/config/colors_config.dart';
import 'package:task/config/size_config.dart';

class AppBarC extends StatelessWidget {
  const AppBarC({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double w = SizeConfig.getWidth(context);
    // double h = SizeConfig.getHeight(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Overview',
          style: GoogleFonts.nunito(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: w * .4,
        ),
        Icon(
          Icons.notifications,
          color: AppColors.primaryGray,
          size: 25,
        ),
        CircleAvatar(
          backgroundImage: const NetworkImage(
              "https://4.bp.blogspot.com/-Jx21kNqFSTU/UXemtqPhZCI/AAAAAAAAh74/BMGSzpU6F48/s1600/funny-cat-pictures-047-001.jpg"),
          backgroundColor: AppColors.primaryGray,
        ),
      ],
    );
  }
}
