// ignore: file_names
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:task/config/size_config.dart';

// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:task/widget/homeComponents/pop_up.dart';

import '../../model/data.dart';

class ChartColumn extends StatelessWidget {
  const ChartColumn({
    super.key,
  });

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
                            'My Observation',
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Stastics',
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
                            backgroundColor: Colors.white,
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
                    child: SfCartesianChart(
                        plotAreaBorderWidth: 0,
                        primaryXAxis: CategoryAxis(
                            //Hide the gridlines of x-axis
                            majorGridLines: const MajorGridLines(width: 0),
                            maximumLabels: 10,
                            //Hide the axis line of x-axis
                            axisLine: const AxisLine(
                              width: 0,
                            )),
                        primaryYAxis: CategoryAxis(
                          isVisible: false,
                        ),
                        series: <ChartSeries<ChartData, String>>[
                          // Renders column chart
                          ColumnSeries<ChartData, String>(
                              dataSource: Data.chartData,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),

                              // Width of thecolumns
                              width: 0.4,
                              // Spacing between the columns
                              spacing: 0.2)
                        ])),
              ],
            ),
          )),
    );
  }
}
