import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:task/config/size_config.dart';

// ignore: depend_on_referenced_packages
import 'package:fk_toggle/fk_toggle.dart';

import '../../config/colors_config.dart';

class Toggle extends StatelessWidget {
  const Toggle({
    super.key,
    required this.switch1,
    required this.switch2,
  });

  final String switch1;
  final String switch2;

  @override
  Widget build(BuildContext context) {
    double w = SizeConfig.getWidth(context);
    double h = SizeConfig.getHeight(context);
    return Container(
      width: w * .9,
      height: h * .05,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: FkToggle(
        width: w * .46,
        height: h * .055,
        labels: [switch1, switch2],
        fontSize: 20,
        cornerRadius: 5,
        enabledElementColor: Colors.white,
        backgroundColor: Colors.white,
        selectedColor: AppColors.primaryPurple,
        disabledElementColor: Colors.black,
      ),
    );
  }
}
