import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Data {
  static List listViewData1 = [
    {
      "title": "150",
      "sub": "My Observation",
      "icon": FontAwesomeIcons.binoculars,
      "color": const Color(0xff42A4DF)
    },
    {
      "title": "4",
      "sub": "Pending",
      "icon": FontAwesomeIcons.pause,
      "color": const Color(0xff42A4DF)
    },
    {
      "title": "1",
      "sub": "Progress",
      "icon": FontAwesomeIcons.clock,
      "color": const Color(0xffA1820A)
    },
    {
      "title": "3",
      "sub": "Resolved",
      "icon": FontAwesomeIcons.check,
      "color": const Color(0xff4AB85B)
    },
    {
      "title": "1",
      "sub": "Closed",
      "icon": FontAwesomeIcons.lock,
      "color": const Color(0xff616161)
    },
  ];
  static List listViewData2 = [
    'Daily',
    'Safety',
    'Excellent',
    'Work cloth,E.P.I',
    'bad Condition'
  ];
  static List listViewData3 = [
    {
      "title": "Date",
      "icon": FontAwesomeIcons.calendar,
    },
    {
      "title": "Type",
      "icon": FontAwesomeIcons.layerGroup,
    },
    {
      "title": "Status",
      "icon": FontAwesomeIcons.circleInfo,
    },
    {
      "title": "Category",
      "icon": FontAwesomeIcons.networkWired,
    },
    {
      "title": "Subcategory",
      "icon": FontAwesomeIcons.diagramPredecessor,
    },
    {
      "title": "Tags",
      "icon": FontAwesomeIcons.tags,
    },
  ];
  static List<ChartData> chartData = [
    ChartData('18', 6),
    ChartData('19', 10),
    ChartData('20', 6),
    ChartData('21', 14),
    ChartData('22', 2),
    ChartData('23', 6),
    ChartData('24', 14),
    ChartData('25', 18),
    ChartData('26', 14),
    ChartData('27', 2),
    ChartData('28', 6),
  ];
  static List<ChartData2> chartData2 = [
    ChartData2("Pending", 10),
    ChartData2("Progress", 7),
    ChartData2("Resolved", 4),
    ChartData2("Closed", 2),
  ];
  static List<String> dropDownData1 = <String>[
    'Site 001',
    'Site 002',
    'Site 003',
    'Site 004',
  ];
  static List<String> dropDownData2 = <String>[
    'Zone 001',
    'Zone 002',
    'Zone 003',
    'Zone 004',
  ];
  static List<String> dropDownData3 = <String>[
    '5 min',
    '10 min',
    '15 min',
    '20 min',
    '25 min',
    '30 min',
    '35 min',
    '40 min',
    '45 min',
    '50 min',
    '55 min',
    '60 min',
  ];
}

class ChartData {
  ChartData(this.x, this.y);

  final String x;
  final int y;
}

class ChartData2 {
  ChartData2(this.x, this.y);

  final String x;
  final int y;
}
