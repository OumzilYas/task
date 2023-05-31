import 'package:flutter/material.dart';
import 'package:task/config/size_config.dart';

class BottomBarC extends StatelessWidget {
  const BottomBarC({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double w = SizeConfig.getWidth(context);
    double h = SizeConfig.getHeight(context);
    return SizedBox(
      height: h * .09,
      child: BottomAppBar(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        clipBehavior: Clip.antiAlias,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: w * .3,
              child: Center(
                child: InkWell(
                  child: Container(
                    height: w * .11,
                    width: h * .053,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue.withOpacity(0.5),
                        image: const DecorationImage(
                          image: AssetImage("assets/Vector.png"),
                          fit: BoxFit.none,
                        )),
                  ),
                ),

                //child:IconButton(icon: Icon(FontAwesomeIcons.chartColumn), onPressed: () {}),
              ),
            ),
            SizedBox(
              width: w * .3,
            ),
            SizedBox(
              width: w * .1,
              child: Center(
                child: InkWell(
                  child: Container(
                    height: w * .11,
                    width: h * .053,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffF5F5F5).withOpacity(0.5),
                        image: const DecorationImage(
                          image: AssetImage("assets/ob.png"),
                          fit: BoxFit.none,
                        )),
                  ),
                ),

                //child:IconButton(icon: Icon(FontAwesomeIcons.chartColumn), onPressed: () {}),
              ),
            ),
            SizedBox(
              width: w * .08,
            ),
            SizedBox(
              width: w * .1,
              child: Center(
                child: InkWell(
                  child: Container(
                    height: w * .11,
                    width: h * .053,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffF5F5F5).withOpacity(0.5),
                        image: const DecorationImage(
                          image: AssetImage("assets/tools.png"),
                          fit: BoxFit.none,
                        )),
                  ),
                ),

                //child:IconButton(icon: Icon(FontAwesomeIcons.chartColumn), onPressed: () {}),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
