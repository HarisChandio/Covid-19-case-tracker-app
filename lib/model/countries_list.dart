import 'dart:convert';
/// updated : 1677921816366
/// country : "Afghanistan"
/// countryInfo : {"_id":4,"iso2":"AF","iso3":"AFG","lat":33,"long":65,"flag":"https://disease.sh/assets/img/flags/af.png"}
/// cases : 209362
/// todayCases : 0
/// deaths : 7896
/// todayDeaths : 0
/// recovered : 191170
/// todayRecovered : 0
/// active : 10296
/// critical : 45
/// casesPerOneMillion : 5137
/// deathsPerOneMillion : 194
/// tests : 1201744
/// testsPerOneMillion : 29487
/// population : 40754388
/// continent : "Asia"
/// oneCasePerPeople : 195
/// oneDeathPerPeople : 5161
/// oneTestPerPeople : 34
/// activePerOneMillion : 252.64
/// recoveredPerOneMillion : 4690.78
/// criticalPerOneMillion : 1.1

CountriesModel countriesListFromJson(String str) => CountriesModel.fromJson(json.decode(str));
String countriesListToJson(CountriesModel data) => json.encode(data.toJson());
class CountriesModel {
  CountriesModel({
      num? updated, 
      String? country, 
      CountryInfo? countryInfo, 
      num? cases, 
      num? todayCases, 
      num? deaths, 
      num? todayDeaths, 
      num? recovered, 
      num? todayRecovered, 
      num? active, 
      num? critical, 
      num? casesPerOneMillion, 
      num? deathsPerOneMillion, 
      num? tests, 
      num? testsPerOneMillion, 
      num? population, 
      String? continent, 
      num? oneCasePerPeople, 
      num? oneDeathPerPeople, 
      num? oneTestPerPeople, 
      num? activePerOneMillion, 
      num? recoveredPerOneMillion, 
      num? criticalPerOneMillion,}){
    _updated = updated;
    _country = country;
    _countryInfo = countryInfo;
    _cases = cases;
    _todayCases = todayCases;
    _deaths = deaths;
    _todayDeaths = todayDeaths;
    _recovered = recovered;
    _todayRecovered = todayRecovered;
    _active = active;
    _critical = critical;
    _casesPerOneMillion = casesPerOneMillion;
    _deathsPerOneMillion = deathsPerOneMillion;
    _tests = tests;
    _testsPerOneMillion = testsPerOneMillion;
    _population = population;
    _continent = continent;
    _oneCasePerPeople = oneCasePerPeople;
    _oneDeathPerPeople = oneDeathPerPeople;
    _oneTestPerPeople = oneTestPerPeople;
    _activePerOneMillion = activePerOneMillion;
    _recoveredPerOneMillion = recoveredPerOneMillion;
    _criticalPerOneMillion = criticalPerOneMillion;
}

  CountriesModel.fromJson(dynamic json) {
    _updated = json['updated'];
    _country = json['country'];
    _countryInfo = json['countryInfo'] != null ? CountryInfo.fromJson(json['countryInfo']) : null;
    _cases = json['cases'];
    _todayCases = json['todayCases'];
    _deaths = json['deaths'];
    _todayDeaths = json['todayDeaths'];
    _recovered = json['recovered'];
    _todayRecovered = json['todayRecovered'];
    _active = json['active'];
    _critical = json['critical'];
    _casesPerOneMillion = json['casesPerOneMillion'];
    _deathsPerOneMillion = json['deathsPerOneMillion'];
    _tests = json['tests'];
    _testsPerOneMillion = json['testsPerOneMillion'];
    _population = json['population'];
    _continent = json['continent'];
    _oneCasePerPeople = json['oneCasePerPeople'];
    _oneDeathPerPeople = json['oneDeathPerPeople'];
    _oneTestPerPeople = json['oneTestPerPeople'];
    _activePerOneMillion = json['activePerOneMillion'];
    _recoveredPerOneMillion = json['recoveredPerOneMillion'];
    _criticalPerOneMillion = json['criticalPerOneMillion'];
  }
  num? _updated;
  String? _country;
  CountryInfo? _countryInfo;
  num? _cases;
  num? _todayCases;
  num? _deaths;
  num? _todayDeaths;
  num? _recovered;
  num? _todayRecovered;
  num? _active;
  num? _critical;
  num? _casesPerOneMillion;
  num? _deathsPerOneMillion;
  num? _tests;
  num? _testsPerOneMillion;
  num? _population;
  String? _continent;
  num? _oneCasePerPeople;
  num? _oneDeathPerPeople;
  num? _oneTestPerPeople;
  num? _activePerOneMillion;
  num? _recoveredPerOneMillion;
  num? _criticalPerOneMillion;
CountriesModel copyWith({  num? updated,
  String? country,
  CountryInfo? countryInfo,
  num? cases,
  num? todayCases,
  num? deaths,
  num? todayDeaths,
  num? recovered,
  num? todayRecovered,
  num? active,
  num? critical,
  num? casesPerOneMillion,
  num? deathsPerOneMillion,
  num? tests,
  num? testsPerOneMillion,
  num? population,
  String? continent,
  num? oneCasePerPeople,
  num? oneDeathPerPeople,
  num? oneTestPerPeople,
  num? activePerOneMillion,
  num? recoveredPerOneMillion,
  num? criticalPerOneMillion,
}) => CountriesModel(  updated: updated ?? _updated,
  country: country ?? _country,
  countryInfo: countryInfo ?? _countryInfo,
  cases: cases ?? _cases,
  todayCases: todayCases ?? _todayCases,
  deaths: deaths ?? _deaths,
  todayDeaths: todayDeaths ?? _todayDeaths,
  recovered: recovered ?? _recovered,
  todayRecovered: todayRecovered ?? _todayRecovered,
  active: active ?? _active,
  critical: critical ?? _critical,
  casesPerOneMillion: casesPerOneMillion ?? _casesPerOneMillion,
  deathsPerOneMillion: deathsPerOneMillion ?? _deathsPerOneMillion,
  tests: tests ?? _tests,
  testsPerOneMillion: testsPerOneMillion ?? _testsPerOneMillion,
  population: population ?? _population,
  continent: continent ?? _continent,
  oneCasePerPeople: oneCasePerPeople ?? _oneCasePerPeople,
  oneDeathPerPeople: oneDeathPerPeople ?? _oneDeathPerPeople,
  oneTestPerPeople: oneTestPerPeople ?? _oneTestPerPeople,
  activePerOneMillion: activePerOneMillion ?? _activePerOneMillion,
  recoveredPerOneMillion: recoveredPerOneMillion ?? _recoveredPerOneMillion,
  criticalPerOneMillion: criticalPerOneMillion ?? _criticalPerOneMillion,
);
  num? get updated => _updated;
  String? get country => _country;
  CountryInfo? get countryInfo => _countryInfo;
  num? get cases => _cases;
  num? get todayCases => _todayCases;
  num? get deaths => _deaths;
  num? get todayDeaths => _todayDeaths;
  num? get recovered => _recovered;
  num? get todayRecovered => _todayRecovered;
  num? get active => _active;
  num? get critical => _critical;
  num? get casesPerOneMillion => _casesPerOneMillion;
  num? get deathsPerOneMillion => _deathsPerOneMillion;
  num? get tests => _tests;
  num? get testsPerOneMillion => _testsPerOneMillion;
  num? get population => _population;
  String? get continent => _continent;
  num? get oneCasePerPeople => _oneCasePerPeople;
  num? get oneDeathPerPeople => _oneDeathPerPeople;
  num? get oneTestPerPeople => _oneTestPerPeople;
  num? get activePerOneMillion => _activePerOneMillion;
  num? get recoveredPerOneMillion => _recoveredPerOneMillion;
  num? get criticalPerOneMillion => _criticalPerOneMillion;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['updated'] = _updated;
    map['country'] = _country;
    if (_countryInfo != null) {
      map['countryInfo'] = _countryInfo?.toJson();
    }
    map['cases'] = _cases;
    map['todayCases'] = _todayCases;
    map['deaths'] = _deaths;
    map['todayDeaths'] = _todayDeaths;
    map['recovered'] = _recovered;
    map['todayRecovered'] = _todayRecovered;
    map['active'] = _active;
    map['critical'] = _critical;
    map['casesPerOneMillion'] = _casesPerOneMillion;
    map['deathsPerOneMillion'] = _deathsPerOneMillion;
    map['tests'] = _tests;
    map['testsPerOneMillion'] = _testsPerOneMillion;
    map['population'] = _population;
    map['continent'] = _continent;
    map['oneCasePerPeople'] = _oneCasePerPeople;
    map['oneDeathPerPeople'] = _oneDeathPerPeople;
    map['oneTestPerPeople'] = _oneTestPerPeople;
    map['activePerOneMillion'] = _activePerOneMillion;
    map['recoveredPerOneMillion'] = _recoveredPerOneMillion;
    map['criticalPerOneMillion'] = _criticalPerOneMillion;
    return map;
  }

}

/// _id : 4
/// iso2 : "AF"
/// iso3 : "AFG"
/// lat : 33
/// long : 65
/// flag : "https://disease.sh/assets/img/flags/af.png"

CountryInfo countryInfoFromJson(String str) => CountryInfo.fromJson(json.decode(str));
String countryInfoToJson(CountryInfo data) => json.encode(data.toJson());
class CountryInfo {
  CountryInfo({
      num? id, 
      String? iso2, 
      String? iso3, 
      num? lat, 
      num? long, 
      String? flag,}){
    _id = id;
    _iso2 = iso2;
    _iso3 = iso3;
    _lat = lat;
    _long = long;
    _flag = flag;
}

  CountryInfo.fromJson(dynamic json) {
    _id = json['_id'];
    _iso2 = json['iso2'];
    _iso3 = json['iso3'];
    _lat = json['lat'];
    _long = json['long'];
    _flag = json['flag'];
  }
  num? _id;
  String? _iso2;
  String? _iso3;
  num? _lat;
  num? _long;
  String? _flag;
CountryInfo copyWith({  num? id,
  String? iso2,
  String? iso3,
  num? lat,
  num? long,
  String? flag,
}) => CountryInfo(  id: id ?? _id,
  iso2: iso2 ?? _iso2,
  iso3: iso3 ?? _iso3,
  lat: lat ?? _lat,
  long: long ?? _long,
  flag: flag ?? _flag,
);
  num? get id => _id;
  String? get iso2 => _iso2;
  String? get iso3 => _iso3;
  num? get lat => _lat;
  num? get long => _long;
  String? get flag => _flag;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['iso2'] = _iso2;
    map['iso3'] = _iso3;
    map['lat'] = _lat;
    map['long'] = _long;
    map['flag'] = _flag;
    return map;
  }

}