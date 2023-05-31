import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:task/config/size_config.dart';
import 'package:task/model/data.dart';

// ignore: camel_case_types
class horizontalList2 extends StatelessWidget {
  const horizontalList2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double w = SizeConfig.getWidth(context);
    double h = SizeConfig.getHeight(context);
    return Container(
      margin: const EdgeInsets.all(2),
      height: h * .045,
      child: ListView.builder(
          itemCount: Data.listViewData2.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              child: Container(
                width: (w * .035) * Data.listViewData2[index].length,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      Data.listViewData2[index],
                      style: GoogleFonts.nunito(
                        fontSize: 13,
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Icon(
                      Icons.clear,
                      size: 13,
                      color: Colors.grey,
                    )
                  ],
                ),
              ))),
    );
  }
}
