import 'package:covid_app/model/countries_list.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../services/state_services.dart';
import 'detail_screen.dart';

class CountriesScreenList extends StatefulWidget {
  const CountriesScreenList({Key? key}) : super(key: key);

  @override
  State<CountriesScreenList> createState() => _CountriesScreenListState();
}

class _CountriesScreenListState extends State<CountriesScreenList> {
  StateServices _services = StateServices();

  late List<CountriesModel> _allCountriesList;
  late List<CountriesModel> _filteredCountriesList;
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _allCountriesList = [];
    _filteredCountriesList = [];
    fetchCountriesList();
  }

  void fetchCountriesList() async {
    List<CountriesModel> countriesList = await _services.fetchCountriesList();
    setState(() {
      _allCountriesList = countriesList;
      _filteredCountriesList = countriesList;
    });
  }

  void filterCountriesList(String query) {
    List<CountriesModel> filteredList = _allCountriesList
        .where((country) =>
            country.country!.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      _filteredCountriesList = filteredList;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value) => filterCountriesList(value),
              controller: _searchController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                hintText: 'Search with country name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          Expanded(
            child: _filteredCountriesList.isEmpty
                ? const ShimmerEffect()
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: _filteredCountriesList.length,
                    itemBuilder: (_, index) {
                      CountriesModel country = _filteredCountriesList[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      DetailScreen(country: country)));
                        },
                        child: Column(
                          children: [
                            Card(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 6.0),
                              elevation: 8.0,
                              child: ListTile(
                                title: Text(country.country.toString()),
                                subtitle: Text(country.cases.toString()),
                                leading: Image(
                                  height: 50,
                                  width: 50,
                                  image: NetworkImage(
                                      country.countryInfo!.flag.toString()),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey.shade700,
          highlightColor: Colors.grey.shade100,
          child: ListTile(
            leading: Container(
              height: 50,
              width: 89,
              color: Colors.white,
            ),
            title: Container(
              height: 10,
              width: 89,
              color: Colors.white,
            ),
            subtitle: Container(
              height: 10,
              width: 89,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
