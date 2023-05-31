import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:task/config/colors_config.dart';
import 'package:task/config/size_config.dart';
import 'package:task/model/data.dart';

// ignore: camel_case_types
class horizontalList1 extends StatelessWidget {
  const horizontalList1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double w = SizeConfig.getWidth(context);
    double h = SizeConfig.getHeight(context);
    return Container(
      margin: const EdgeInsets.all(6),
      height: h * .09,
      child: ListView.builder(
        itemCount: Data.listViewData1.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          width: w * .5,
          margin: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0XFFE0E0E0),
            ),
          ),
          child: Center(
            child: ListTile(
              leading: Container(
                width: w * .1,
                height: h * .06,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Data.listViewData1[index]['color'].withOpacity(0.4),
                ),
                child: Icon(
                  Data.listViewData1[index]['icon'],
                  color: Data.listViewData1[index]['color'],
                  size: w * .05,
                ),
              ),
              title: Text(
                Data.listViewData1[index]['title'],
                style: GoogleFonts.nunito(
                    fontSize: 15, fontWeight: FontWeight.w700),
              ),
              subtitle: SizedBox(
                width: w * .45,
                child: Text(
                  Data.listViewData1[index]['sub'],
                  style: GoogleFonts.nunito(
                      fontSize: 12,
                      color: AppColors.iconsGray,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
