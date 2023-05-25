import 'package:covid_app/model/countries_list.dart';
import 'package:covid_app/view/worldstatescreen.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/view/widgets/pie_chart.dart';

class DetailScreen extends StatefulWidget {
  final CountriesModel country;

  const DetailScreen({Key? key, required this.country}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late CountriesModel _country;

  @override
  void initState() {
    // TODO: implement initState
    _country = widget.country;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_country.country.toString()),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          PieChar(
              deaths: _country.deaths.toString(),
              recovered: _country.recovered.toString(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 6.0),
                  elevation: 5.0,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      ReusableRow(
                          title: 'Total Cases',
                          value: _country.cases.toString()),
                      ReusableRow(
                          title: 'Recovered',
                          value: _country.recovered.toString()),
                      ReusableRow(
                          title: 'Deaths', value: _country.deaths.toString()),
                      ReusableRow(
                          title: 'Today Cases',
                          value: _country.todayCases.toString()),
                      ReusableRow(
                          title: 'Today Recovered',
                          value: _country.todayRecovered.toString()),
                      ReusableRow(
                          title: 'Today Deaths',
                          value: _country.todayDeaths.toString())
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                backgroundImage:
                    NetworkImage(_country.countryInfo!.flag.toString()),
                radius: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
