import 'package:covid_app/services/state_services.dart';
import 'package:covid_app/view/widgets/pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../model/World_state_model.dart';
import 'package:get/get.dart';
import 'countries_list_screen.dart';

class WorldStateScreen extends StatefulWidget {

  final Future<WorldStateModel> statistics;
  const WorldStateScreen({Key? key,required this.statistics}) : super(key: key);

  @override
  State<WorldStateScreen> createState() => _WorldStateScreenState();
}

class _WorldStateScreenState extends State<WorldStateScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  Future<WorldStateModel> get statistics{
    return widget.statistics;
  }

  @override
  void initState() {
    // TODO: implement initState
    _controller =
    AnimationController(vsync: this, duration: const Duration(seconds: 5))
      ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }


  StateServices _services = StateServices();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                FutureBuilder(
                  future: statistics,
                  builder: (_, AsyncSnapshot<WorldStateModel> _snapshot) {
                    if (!_snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          height: size.height * 0.9,
                          width: size.width * 0.2,
                          child: SpinKitFadingCircle(
                            size: 50,
                            color: Colors.red,
                            controller: _controller,
                          ),
                        ),
                      );
                    } else {
                      var data = _snapshot.data;
                      String cases = data!.cases.toString();
                      String recovered = data!.recovered.toString();
                      String deaths = data.deaths.toString();
                      return Column(
                        children: [
                          PieChar(deaths: deaths,
                            recovered: recovered,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * .04),
                            child: Card(
                              elevation: 8.0,
                              child: Column(
                                children: [
                                  ReusableRow(
                                      title: 'Total',
                                      value: cases),
                                  Divider(),
                                  ReusableRow(
                                      title: 'Recovered', value: recovered),
                                  Divider(),
                                  ReusableRow(title: 'Deaths', value: deaths),
                                  Divider(),
                                  ReusableRow(
                                      title: 'Active',
                                      value: data.active.toString()),
                                  Divider(),
                                  ReusableRow(
                                      title: 'Critical',
                                      value: data.critical.toString()),
                                  Divider(),
                                  ReusableRow(
                                      title: 'Today Cases',
                                      value: data.todayCases.toString()),
                                  Divider(),
                                  ReusableRow(
                                      title: 'Today Deaths',
                                      value: data.todayDeaths.toString()),
                                  Divider(),
                                  ReusableRow(
                                      title: 'Today Recovered',
                                      value: data.todayRecovered.toString()),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.to(CountriesScreenList()),
                            child: Card(
                              elevation: 8.0,
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xFF1aa260),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text('Track Countries'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  final String title;
  final String value;

  const ReusableRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 10.0, bottom: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text(value),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
