import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interactive_chart/interactive_chart.dart';
import 'package:tse/Constans.dart';
import 'package:tse/Screens/menuPage/Manage/symbol/his.dart';

class symPage extends StatefulWidget {
  const symPage({Key? key}) : super(key: key);

  @override
  _symPageState createState() => _symPageState();
}

class _symPageState extends State<symPage> {
  List<CandleData> _data = MockDataTesla.candles;
  bool _darkMode = true;
  bool _showAverage = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: const EdgeInsets.all(24.0),
        child: new Scaffold(
          backgroundColor: bgDark,
          body: InteractiveChart(
            candles: _data,
            style: ChartStyle(
              volumeColor: gry.withOpacity(0.8),
            ),
          ),
        ));
  }
}
