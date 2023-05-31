import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:task/config/size_config.dart';

// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:task/widget/homeComponents/pop_up.dart';

import '../../model/data.dart';

// ignore: must_be_immutable
class PieChart extends StatelessWidget {
  PieChart({super.key, required this.tooltipBehavior});

  TooltipBehavior tooltipBehavior;

  @override
  @override
  Widget build(BuildContext context) {
    double w = SizeConfig.getWidth(context);
    double h = SizeConfig.getHeight(context);
    return SizedBox(
      width: w * .9,
      height: h * .3,
      child: Card(
          clipBehavior: Clip.antiAlias,
          child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: w * .8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Progress',
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Today',
                              style: GoogleFonts.nunito(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            showModalBottomSheet<void>(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              builder: (BuildContext context) {
                                return const PopUp();
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: h * .21,
                      width: w * .8,
                      child: SfCircularChart(
                          tooltipBehavior: tooltipBehavior,
                          palette: const <Color>[
                            Colors.blue,
                            Colors.yellow,
                            Colors.green,
                            Colors.grey
                          ],
                          legend: Legend(isVisible: true),
                          series: <CircularSeries>[
                            DoughnutSeries<ChartData2, String>(
                              explode: true,
                              dataSource: Data.chartData2,
                              xValueMapper: (ChartData2 data, _) => data.x,
                              yValueMapper: (ChartData2 data, _) => data.y,
                              // Radius of doughnut
                            )
                          ])),
                ],
              ))),
    );
  }
}
