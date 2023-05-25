import 'dart:convert';

import '../model/countries_list.dart';
import 'utilities/app_url.dart';
import 'package:covid_app/model/World_state_model.dart';
import 'package:http/http.dart' as http;
class StateServices{

  Future<WorldStateModel> fetchWorldStateModel () async{
    final response = await  http.get(Uri.parse(AppUrl.WorldStateApi));
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      return WorldStateModel.fromJson(data);
    }else{
      throw Exception('error');
    }
  }

  List<CountriesModel> countryList = [];
  Future<List<CountriesModel>> fetchCountriesList() async{
    final response = await http.get(Uri.parse(AppUrl.countriesList));
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      for(Map i in data){
        countryList.add(CountriesModel.fromJson(i));
      }
      return countryList;
    }else{
      throw Exception('Error');
    }
  }
}