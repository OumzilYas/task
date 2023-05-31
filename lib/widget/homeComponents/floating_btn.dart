// ignore: file_names
import 'package:flutter/material.dart';
import 'package:task/config/size_config.dart';
import 'package:task/view/alert_page.dart';

class FLButton extends StatelessWidget {
  const FLButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double w = SizeConfig.getWidth(context);
    double h = SizeConfig.getHeight(context);
    return Container(
        height: h * .08,
        width: w * .15,
        decoration: const BoxDecoration(
          color: Color(0xffF2F2F2),
          shape: BoxShape.circle,
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AlertPage()),
            );
          },
          child: Container(
            height: h * .07,
            width: w * .19,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              //size: 50,
            ),
          ),
        ));
  }
}
