// ignore: file_names
import 'package:flutter/material.dart';
import 'package:task/config/colors_config.dart';
import 'package:task/widget/homeComponents/app_bar.dart';
import 'package:task/widget/homeComponents/bottom_bar.dart';
import 'package:task/widget/homeComponents/chart_column.dart';
import 'package:task/widget/homeComponents/floating_btn.dart';
import 'package:task/widget/homeComponents/horizental_lv.dart';
import 'package:task/widget/homeComponents/horizental_lv2.dart';
import 'package:task/widget/homeComponents/pie_chart.dart';

// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_charts/charts.dart';
import '../config/size_config.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TooltipBehavior _tooltipBehavior = TooltipBehavior();

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(
        enable: true,
        borderColor: Colors.white,
        borderWidth: 1,
        format: 'point.y',
        textStyle: const TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
        color: Colors.white);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //double w = SizeConfig.getWidth(context);
    double h = SizeConfig.getHeight(context);
    return Scaffold(
      backgroundColor: AppColors.secondaryGray,
      appBar: AppBar(
        title: const AppBarC(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: h * .01,
            ),
            const horizontalList1(),
            SizedBox(
              height: h * .01,
            ),
            const horizontalList2(),
            const ChartColumn(),
            PieChart(tooltipBehavior: _tooltipBehavior),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBarC(),
      floatingActionButton: const FLButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
