import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
class PieChar extends StatefulWidget {


  final String recovered;
  final String deaths;

  const PieChar({Key? key, required this.deaths, required this.recovered}) : super(key: key);

  @override
  State<PieChar> createState() => _PieCharState();
}

class _PieCharState extends State<PieChar> {

  final colorList = const [
    Color(0xFF1aa260),
    Color(0xFFde5246)
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  PieChart(
      dataMap: {
        "recovered": double.parse(widget.recovered),
        "deaths": double.parse(widget.deaths),
      },
      chartValuesOptions: const ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: true,
        showChartValuesOutside: false,
        decimalPlaces: 1,
      ),
      chartRadius: size.width / 3,
      colorList: colorList,
      animationDuration: const Duration(milliseconds: 2300),
      chartType: ChartType.ring,
      legendOptions: const LegendOptions(
        showLegends: true,
        legendPosition: LegendPosition.left,
      ),
    );
  }
}
