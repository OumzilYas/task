import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:task/config/size_config.dart';

class AppBarC2 extends StatelessWidget {
  const AppBarC2({
    super.key,
    required this.returnF,
  });

  final Function returnF;

  @override
  Widget build(BuildContext context) {
    double w = SizeConfig.getWidth(context);
    double h = SizeConfig.getHeight(context);
    return Container(
        height: h * .1,
        width: w,
        color: Colors.grey[200],
        child: Column(
          children: [
            SizedBox(
              height: h * .01,
            ),
            Center(
              child: SizedBox(
                width: w * .8,
                height: h * .09,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Pending',
                      style: GoogleFonts.nunito(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          returnF();
                        },
                        icon: const Icon(
                          Icons.keyboard_return_outlined,
                          size: 20,
                        ))
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
