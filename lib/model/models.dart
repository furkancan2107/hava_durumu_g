///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class HavaDurumuForecastForecastdayHourCondition {
/*
{
  "text": "Heavy snow",
  "icon": "//cdn.weatherapi.com/weather/64x64/night/338.png",
  "code": 1225
} 
*/

  String? text;
  String? icon;
  int? code;

  HavaDurumuForecastForecastdayHourCondition({
    this.text,
    this.icon,
    this.code,
  });
  HavaDurumuForecastForecastdayHourCondition.fromJson(
      Map<String, dynamic> json) {
    text = json['text']?.toString();
    icon = json['icon']?.toString();
    code = json['code']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['text'] = text;
    data['icon'] = icon;
    data['code'] = code;
    return data;
  }
}

class HavaDurumuForecastForecastdayHour {
/*
{
  "time_epoch": 1676494800,
  "time": "2023-02-16 00:00",
  "temp_c": -8,
  "temp_f": 17.6,
  "is_day": 0,
  "condition": {
    "text": "Heavy snow",
    "icon": "//cdn.weatherapi.com/weather/64x64/night/338.png",
    "code": 1225
  },
  "wind_mph": 8.5,
  "wind_kph": 13.7,
  "wind_degree": 308,
  "wind_dir": "NW",
  "pressure_mb": 1020,
  "pressure_in": 30.13,
  "precip_mm": 0.6,
  "precip_in": 0.02,
  "humidity": 84,
  "cloud": 78,
  "feelslike_c": -13.9,
  "feelslike_f": 7,
  "windchill_c": -13.9,
  "windchill_f": 7,
  "heatindex_c": -8,
  "heatindex_f": 17.6,
  "dewpoint_c": -10.2,
  "dewpoint_f": 13.6,
  "will_it_rain": 0,
  "chance_of_rain": 0,
  "will_it_snow": 1,
  "chance_of_snow": 88,
  "vis_km": 2,
  "vis_miles": 1,
  "gust_mph": 11.9,
  "gust_kph": 19.1,
  "uv": 1
} 
*/

  int? timeEpoch;
  String? time;
  int? tempC;
  double? tempF;
  int? isDay;
  HavaDurumuForecastForecastdayHourCondition? condition;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  int? pressureMb;
  double? pressureIn;
  double? precipMm;
  double? precipIn;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  int? feelslikeF;
  double? windchillC;
  int? windchillF;
  int? heatindexC;
  double? heatindexF;
  double? dewpointC;
  double? dewpointF;
  int? willItRain;
  int? chanceOfRain;
  int? willItSnow;
  int? chanceOfSnow;
  int? visKm;
  int? visMiles;
  double? gustMph;
  double? gustKph;
  int? uv;

  HavaDurumuForecastForecastdayHour({
    this.timeEpoch,
    this.time,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.willItRain,
    this.chanceOfRain,
    this.willItSnow,
    this.chanceOfSnow,
    this.visKm,
    this.visMiles,
    this.gustMph,
    this.gustKph,
    this.uv,
  });
  HavaDurumuForecastForecastdayHour.fromJson(Map<String, dynamic> json) {
    timeEpoch = json['time_epoch']?.toInt();
    time = json['time']?.toString();
    tempC = json['temp_c']?.toInt();
    tempF = json['temp_f']?.toDouble();
    isDay = json['is_day']?.toInt();
    condition = (json['condition'] != null)
        ? HavaDurumuForecastForecastdayHourCondition.fromJson(json['condition'])
        : null;
    windMph = json['wind_mph']?.toDouble();
    windKph = json['wind_kph']?.toDouble();
    windDegree = json['wind_degree']?.toInt();
    windDir = json['wind_dir']?.toString();
    pressureMb = json['pressure_mb']?.toInt();
    pressureIn = json['pressure_in']?.toDouble();
    precipMm = json['precip_mm']?.toDouble();
    precipIn = json['precip_in']?.toDouble();
    humidity = json['humidity']?.toInt();
    cloud = json['cloud']?.toInt();
    feelslikeC = json['feelslike_c']?.toDouble();
    feelslikeF = json['feelslike_f']?.toInt();
    windchillC = json['windchill_c']?.toDouble();
    windchillF = json['windchill_f']?.toInt();
    heatindexC = json['heatindex_c']?.toInt();
    heatindexF = json['heatindex_f']?.toDouble();
    dewpointC = json['dewpoint_c']?.toDouble();
    dewpointF = json['dewpoint_f']?.toDouble();
    willItRain = json['will_it_rain']?.toInt();
    chanceOfRain = json['chance_of_rain']?.toInt();
    willItSnow = json['will_it_snow']?.toInt();
    chanceOfSnow = json['chance_of_snow']?.toInt();
    visKm = json['vis_km']?.toInt();
    visMiles = json['vis_miles']?.toInt();
    gustMph = json['gust_mph']?.toDouble();
    gustKph = json['gust_kph']?.toDouble();
    uv = json['uv']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['time_epoch'] = timeEpoch;
    data['time'] = time;
    data['temp_c'] = tempC;
    data['temp_f'] = tempF;
    data['is_day'] = isDay;
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }
    data['wind_mph'] = windMph;
    data['wind_kph'] = windKph;
    data['wind_degree'] = windDegree;
    data['wind_dir'] = windDir;
    data['pressure_mb'] = pressureMb;
    data['pressure_in'] = pressureIn;
    data['precip_mm'] = precipMm;
    data['precip_in'] = precipIn;
    data['humidity'] = humidity;
    data['cloud'] = cloud;
    data['feelslike_c'] = feelslikeC;
    data['feelslike_f'] = feelslikeF;
    data['windchill_c'] = windchillC;
    data['windchill_f'] = windchillF;
    data['heatindex_c'] = heatindexC;
    data['heatindex_f'] = heatindexF;
    data['dewpoint_c'] = dewpointC;
    data['dewpoint_f'] = dewpointF;
    data['will_it_rain'] = willItRain;
    data['chance_of_rain'] = chanceOfRain;
    data['will_it_snow'] = willItSnow;
    data['chance_of_snow'] = chanceOfSnow;
    data['vis_km'] = visKm;
    data['vis_miles'] = visMiles;
    data['gust_mph'] = gustMph;
    data['gust_kph'] = gustKph;
    data['uv'] = uv;
    return data;
  }
}

class HavaDurumuForecastForecastdayAstro {
/*
{
  "sunrise": "06:57 AM",
  "sunset": "05:45 PM",
  "moonrise": "03:50 AM",
  "moonset": "12:56 PM",
  "moon_phase": "Waning Crescent",
  "moon_illumination": "25",
  "is_moon_up": 0,
  "is_sun_up": 0
} 
*/

  String? sunrise;
  String? sunset;
  String? moonrise;
  String? moonset;
  String? moonPhase;
  String? moonIllumination;
  int? isMoonUp;
  int? isSunUp;

  HavaDurumuForecastForecastdayAstro({
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.moonPhase,
    this.moonIllumination,
    this.isMoonUp,
    this.isSunUp,
  });
  HavaDurumuForecastForecastdayAstro.fromJson(Map<String, dynamic> json) {
    sunrise = json['sunrise']?.toString();
    sunset = json['sunset']?.toString();
    moonrise = json['moonrise']?.toString();
    moonset = json['moonset']?.toString();
    moonPhase = json['moon_phase']?.toString();
    moonIllumination = json['moon_illumination']?.toString();
    isMoonUp = json['is_moon_up']?.toInt();
    isSunUp = json['is_sun_up']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    data['moonrise'] = moonrise;
    data['moonset'] = moonset;
    data['moon_phase'] = moonPhase;
    data['moon_illumination'] = moonIllumination;
    data['is_moon_up'] = isMoonUp;
    data['is_sun_up'] = isSunUp;
    return data;
  }
}

class HavaDurumuForecastForecastdayDayCondition {
/*
{
  "text": "Moderate or heavy snow showers",
  "icon": "//cdn.weatherapi.com/weather/64x64/day/371.png",
  "code": 1258
} 
*/

  String? text;
  String? icon;
  int? code;

  HavaDurumuForecastForecastdayDayCondition({
    this.text,
    this.icon,
    this.code,
  });
  HavaDurumuForecastForecastdayDayCondition.fromJson(
      Map<String, dynamic> json) {
    text = json['text']?.toString();
    icon = json['icon']?.toString();
    code = json['code']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['text'] = text;
    data['icon'] = icon;
    data['code'] = code;
    return data;
  }
}

class HavaDurumuForecastForecastdayDay {
/*
{
  "maxtemp_c": -4.6,
  "maxtemp_f": 23.7,
  "mintemp_c": -16,
  "mintemp_f": 3.2,
  "avgtemp_c": -9.6,
  "avgtemp_f": 14.6,
  "maxwind_mph": 15.4,
  "maxwind_kph": 24.8,
  "totalprecip_mm": 4.9,
  "totalprecip_in": 0.19,
  "totalsnow_cm": 3.99,
  "avgvis_km": 8.6,
  "avgvis_miles": 5,
  "avghumidity": 71,
  "daily_will_it_rain": 0,
  "daily_chance_of_rain": 67,
  "daily_will_it_snow": 0,
  "daily_chance_of_snow": 30,
  "condition": {
    "text": "Moderate or heavy snow showers",
    "icon": "//cdn.weatherapi.com/weather/64x64/day/371.png",
    "code": 1258
  },
  "uv": 1
} 
*/

  double? maxtempC;
  double? maxtempF;
  int? mintempC;
  double? mintempF;
  double? avgtempC;
  double? avgtempF;
  double? maxwindMph;
  double? maxwindKph;
  double? totalprecipMm;
  double? totalprecipIn;
  double? totalsnowCm;
  double? avgvisKm;
  int? avgvisMiles;
  int? avghumidity;
  int? dailyWillItRain;
  int? dailyChanceOfRain;
  int? dailyWillItSnow;
  int? dailyChanceOfSnow;
  HavaDurumuForecastForecastdayDayCondition? condition;
  int? uv;

  HavaDurumuForecastForecastdayDay({
    this.maxtempC,
    this.maxtempF,
    this.mintempC,
    this.mintempF,
    this.avgtempC,
    this.avgtempF,
    this.maxwindMph,
    this.maxwindKph,
    this.totalprecipMm,
    this.totalprecipIn,
    this.totalsnowCm,
    this.avgvisKm,
    this.avgvisMiles,
    this.avghumidity,
    this.dailyWillItRain,
    this.dailyChanceOfRain,
    this.dailyWillItSnow,
    this.dailyChanceOfSnow,
    this.condition,
    this.uv,
  });
  HavaDurumuForecastForecastdayDay.fromJson(Map<String, dynamic> json) {
    maxtempC = json['maxtemp_c']?.toDouble();
    maxtempF = json['maxtemp_f']?.toDouble();
    mintempC = json['mintemp_c']?.toInt();
    mintempF = json['mintemp_f']?.toDouble();
    avgtempC = json['avgtemp_c']?.toDouble();
    avgtempF = json['avgtemp_f']?.toDouble();
    maxwindMph = json['maxwind_mph']?.toDouble();
    maxwindKph = json['maxwind_kph']?.toDouble();
    totalprecipMm = json['totalprecip_mm']?.toDouble();
    totalprecipIn = json['totalprecip_in']?.toDouble();
    totalsnowCm = json['totalsnow_cm']?.toDouble();
    avgvisKm = json['avgvis_km']?.toDouble();
    avgvisMiles = json['avgvis_miles']?.toInt();
    avghumidity = json['avghumidity']?.toInt();
    dailyWillItRain = json['daily_will_it_rain']?.toInt();
    dailyChanceOfRain = json['daily_chance_of_rain']?.toInt();
    dailyWillItSnow = json['daily_will_it_snow']?.toInt();
    dailyChanceOfSnow = json['daily_chance_of_snow']?.toInt();
    condition = (json['condition'] != null)
        ? HavaDurumuForecastForecastdayDayCondition.fromJson(json['condition'])
        : null;
    uv = json['uv']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['maxtemp_c'] = maxtempC;
    data['maxtemp_f'] = maxtempF;
    data['mintemp_c'] = mintempC;
    data['mintemp_f'] = mintempF;
    data['avgtemp_c'] = avgtempC;
    data['avgtemp_f'] = avgtempF;
    data['maxwind_mph'] = maxwindMph;
    data['maxwind_kph'] = maxwindKph;
    data['totalprecip_mm'] = totalprecipMm;
    data['totalprecip_in'] = totalprecipIn;
    data['totalsnow_cm'] = totalsnowCm;
    data['avgvis_km'] = avgvisKm;
    data['avgvis_miles'] = avgvisMiles;
    data['avghumidity'] = avghumidity;
    data['daily_will_it_rain'] = dailyWillItRain;
    data['daily_chance_of_rain'] = dailyChanceOfRain;
    data['daily_will_it_snow'] = dailyWillItSnow;
    data['daily_chance_of_snow'] = dailyChanceOfSnow;
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }
    data['uv'] = uv;
    return data;
  }
}

class HavaDurumuForecastForecastday {
/*
{
  "date": "2023-02-16",
  "date_epoch": 1676505600,
  "day": {
    "maxtemp_c": -4.6,
    "maxtemp_f": 23.7,
    "mintemp_c": -16,
    "mintemp_f": 3.2,
    "avgtemp_c": -9.6,
    "avgtemp_f": 14.6,
    "maxwind_mph": 15.4,
    "maxwind_kph": 24.8,
    "totalprecip_mm": 4.9,
    "totalprecip_in": 0.19,
    "totalsnow_cm": 3.99,
    "avgvis_km": 8.6,
    "avgvis_miles": 5,
    "avghumidity": 71,
    "daily_will_it_rain": 0,
    "daily_chance_of_rain": 67,
    "daily_will_it_snow": 0,
    "daily_chance_of_snow": 30,
    "condition": {
      "text": "Moderate or heavy snow showers",
      "icon": "//cdn.weatherapi.com/weather/64x64/day/371.png",
      "code": 1258
    },
    "uv": 1
  },
  "astro": {
    "sunrise": "06:57 AM",
    "sunset": "05:45 PM",
    "moonrise": "03:50 AM",
    "moonset": "12:56 PM",
    "moon_phase": "Waning Crescent",
    "moon_illumination": "25",
    "is_moon_up": 0,
    "is_sun_up": 0
  },
  "hour": [
    {
      "time_epoch": 1676494800,
      "time": "2023-02-16 00:00",
      "temp_c": -8,
      "temp_f": 17.6,
      "is_day": 0,
      "condition": {
        "text": "Heavy snow",
        "icon": "//cdn.weatherapi.com/weather/64x64/night/338.png",
        "code": 1225
      },
      "wind_mph": 8.5,
      "wind_kph": 13.7,
      "wind_degree": 308,
      "wind_dir": "NW",
      "pressure_mb": 1020,
      "pressure_in": 30.13,
      "precip_mm": 0.6,
      "precip_in": 0.02,
      "humidity": 84,
      "cloud": 78,
      "feelslike_c": -13.9,
      "feelslike_f": 7,
      "windchill_c": -13.9,
      "windchill_f": 7,
      "heatindex_c": -8,
      "heatindex_f": 17.6,
      "dewpoint_c": -10.2,
      "dewpoint_f": 13.6,
      "will_it_rain": 0,
      "chance_of_rain": 0,
      "will_it_snow": 1,
      "chance_of_snow": 88,
      "vis_km": 2,
      "vis_miles": 1,
      "gust_mph": 11.9,
      "gust_kph": 19.1,
      "uv": 1
    }
  ]
} 
*/

  String? date;
  int? dateEpoch;
  HavaDurumuForecastForecastdayDay? day;
  HavaDurumuForecastForecastdayAstro? astro;
  List<HavaDurumuForecastForecastdayHour?>? hour;

  HavaDurumuForecastForecastday({
    this.date,
    this.dateEpoch,
    this.day,
    this.astro,
    this.hour,
  });
  HavaDurumuForecastForecastday.fromJson(Map<String, dynamic> json) {
    date = json['date']?.toString();
    dateEpoch = json['date_epoch']?.toInt();
    day = (json['day'] != null)
        ? HavaDurumuForecastForecastdayDay.fromJson(json['day'])
        : null;
    astro = (json['astro'] != null)
        ? HavaDurumuForecastForecastdayAstro.fromJson(json['astro'])
        : null;
    if (json['hour'] != null) {
      final v = json['hour'];
      final arr0 = <HavaDurumuForecastForecastdayHour>[];
      v.forEach((v) {
        arr0.add(HavaDurumuForecastForecastdayHour.fromJson(v));
      });
      hour = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['date'] = date;
    data['date_epoch'] = dateEpoch;
    if (day != null) {
      data['day'] = day!.toJson();
    }
    if (astro != null) {
      data['astro'] = astro!.toJson();
    }
    if (hour != null) {
      final v = hour;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data['hour'] = arr0;
    }
    return data;
  }
}

class HavaDurumuForecast {
/*
{
  "forecastday": [
    {
      "date": "2023-02-16",
      "date_epoch": 1676505600,
      "day": {
        "maxtemp_c": -4.6,
        "maxtemp_f": 23.7,
        "mintemp_c": -16,
        "mintemp_f": 3.2,
        "avgtemp_c": -9.6,
        "avgtemp_f": 14.6,
        "maxwind_mph": 15.4,
        "maxwind_kph": 24.8,
        "totalprecip_mm": 4.9,
        "totalprecip_in": 0.19,
        "totalsnow_cm": 3.99,
        "avgvis_km": 8.6,
        "avgvis_miles": 5,
        "avghumidity": 71,
        "daily_will_it_rain": 0,
        "daily_chance_of_rain": 67,
        "daily_will_it_snow": 0,
        "daily_chance_of_snow": 30,
        "condition": {
          "text": "Moderate or heavy snow showers",
          "icon": "//cdn.weatherapi.com/weather/64x64/day/371.png",
          "code": 1258
        },
        "uv": 1
      },
      "astro": {
        "sunrise": "06:57 AM",
        "sunset": "05:45 PM",
        "moonrise": "03:50 AM",
        "moonset": "12:56 PM",
        "moon_phase": "Waning Crescent",
        "moon_illumination": "25",
        "is_moon_up": 0,
        "is_sun_up": 0
      },
      "hour": [
        {
          "time_epoch": 1676494800,
          "time": "2023-02-16 00:00",
          "temp_c": -8,
          "temp_f": 17.6,
          "is_day": 0,
          "condition": {
            "text": "Heavy snow",
            "icon": "//cdn.weatherapi.com/weather/64x64/night/338.png",
            "code": 1225
          },
          "wind_mph": 8.5,
          "wind_kph": 13.7,
          "wind_degree": 308,
          "wind_dir": "NW",
          "pressure_mb": 1020,
          "pressure_in": 30.13,
          "precip_mm": 0.6,
          "precip_in": 0.02,
          "humidity": 84,
          "cloud": 78,
          "feelslike_c": -13.9,
          "feelslike_f": 7,
          "windchill_c": -13.9,
          "windchill_f": 7,
          "heatindex_c": -8,
          "heatindex_f": 17.6,
          "dewpoint_c": -10.2,
          "dewpoint_f": 13.6,
          "will_it_rain": 0,
          "chance_of_rain": 0,
          "will_it_snow": 1,
          "chance_of_snow": 88,
          "vis_km": 2,
          "vis_miles": 1,
          "gust_mph": 11.9,
          "gust_kph": 19.1,
          "uv": 1
        }
      ]
    }
  ]
} 
*/

  List<HavaDurumuForecastForecastday?>? forecastday;

  HavaDurumuForecast({
    this.forecastday,
  });
  HavaDurumuForecast.fromJson(Map<String, dynamic> json) {
    if (json['forecastday'] != null) {
      final v = json['forecastday'];
      final arr0 = <HavaDurumuForecastForecastday>[];
      v.forEach((v) {
        arr0.add(HavaDurumuForecastForecastday.fromJson(v));
      });
      forecastday = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (forecastday != null) {
      final v = forecastday;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data['forecastday'] = arr0;
    }
    return data;
  }
}

class HavaDurumuCurrentCondition {
/*
{
  "text": "Partly cloudy",
  "icon": "//cdn.weatherapi.com/weather/64x64/day/116.png",
  "code": 1003
} 
*/

  String? text;
  String? icon;
  int? code;

  HavaDurumuCurrentCondition({
    this.text,
    this.icon,
    this.code,
  });
  HavaDurumuCurrentCondition.fromJson(Map<String, dynamic> json) {
    text = json['text']?.toString();
    icon = json['icon']?.toString();
    code = json['code']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['text'] = text;
    data['icon'] = icon;
    data['code'] = code;
    return data;
  }
}

class HavaDurumuCurrent {
/*
{
  "last_updated_epoch": 1676556000,
  "last_updated": "2023-02-16 17:00",
  "temp_c": -5,
  "temp_f": 23,
  "is_day": 1,
  "condition": {
    "text": "Partly cloudy",
    "icon": "//cdn.weatherapi.com/weather/64x64/day/116.png",
    "code": 1003
  },
  "wind_mph": 16.1,
  "wind_kph": 25.9,
  "wind_degree": 290,
  "wind_dir": "WNW",
  "pressure_mb": 1021,
  "pressure_in": 30.15,
  "precip_mm": 0,
  "precip_in": 0,
  "humidity": 49,
  "cloud": 75,
  "feelslike_c": -11.5,
  "feelslike_f": 11.4,
  "vis_km": 10,
  "vis_miles": 6,
  "uv": 1,
  "gust_mph": 15.4,
  "gust_kph": 24.8
} 
*/

  int? lastUpdatedEpoch;
  String? lastUpdated;
  int? tempC;
  int? tempF;
  int? isDay;
  HavaDurumuCurrentCondition? condition;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  int? pressureMb;
  double? pressureIn;
  int? precipMm;
  int? precipIn;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? feelslikeF;
  int? visKm;
  int? visMiles;
  int? uv;
  double? gustMph;
  double? gustKph;

  HavaDurumuCurrent({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });
  HavaDurumuCurrent.fromJson(Map<String, dynamic> json) {
    lastUpdatedEpoch = json['last_updated_epoch']?.toInt();
    lastUpdated = json['last_updated']?.toString();
    tempC = json['temp_c']?.toInt();
    tempF = json['temp_f']?.toInt();
    isDay = json['is_day']?.toInt();
    condition = (json['condition'] != null)
        ? HavaDurumuCurrentCondition.fromJson(json['condition'])
        : null;
    windMph = json['wind_mph']?.toDouble();
    windKph = json['wind_kph']?.toDouble();
    windDegree = json['wind_degree']?.toInt();
    windDir = json['wind_dir']?.toString();
    pressureMb = json['pressure_mb']?.toInt();
    pressureIn = json['pressure_in']?.toDouble();
    precipMm = json['precip_mm']?.toInt();
    precipIn = json['precip_in']?.toInt();
    humidity = json['humidity']?.toInt();
    cloud = json['cloud']?.toInt();
    feelslikeC = json['feelslike_c']?.toDouble();
    feelslikeF = json['feelslike_f']?.toDouble();
    visKm = json['vis_km']?.toInt();
    visMiles = json['vis_miles']?.toInt();
    uv = json['uv']?.toInt();
    gustMph = json['gust_mph']?.toDouble();
    gustKph = json['gust_kph']?.toDouble();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['last_updated_epoch'] = lastUpdatedEpoch;
    data['last_updated'] = lastUpdated;
    data['temp_c'] = tempC;
    data['temp_f'] = tempF;
    data['is_day'] = isDay;
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }
    data['wind_mph'] = windMph;
    data['wind_kph'] = windKph;
    data['wind_degree'] = windDegree;
    data['wind_dir'] = windDir;
    data['pressure_mb'] = pressureMb;
    data['pressure_in'] = pressureIn;
    data['precip_mm'] = precipMm;
    data['precip_in'] = precipIn;
    data['humidity'] = humidity;
    data['cloud'] = cloud;
    data['feelslike_c'] = feelslikeC;
    data['feelslike_f'] = feelslikeF;
    data['vis_km'] = visKm;
    data['vis_miles'] = visMiles;
    data['uv'] = uv;
    data['gust_mph'] = gustMph;
    data['gust_kph'] = gustKph;
    return data;
  }
}

class HavaDurumuLocation {
/*
{
  "name": "Van Ferit Melen Airport",
  "region": "Van",
  "country": "Turkey",
  "lat": 38.47,
  "lon": 43.33,
  "tz_id": "Europe/Istanbul",
  "localtime_epoch": 1676556678,
  "localtime": "2023-02-16 17:11"
} 
*/

  String? name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? tzId;
  int? localtimeEpoch;
  String? localtime;

  HavaDurumuLocation({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });
  HavaDurumuLocation.fromJson(Map<String, dynamic> json) {
    name = json['name']?.toString();
    region = json['region']?.toString();
    country = json['country']?.toString();
    lat = json['lat']?.toDouble();
    lon = json['lon']?.toDouble();
    tzId = json['tz_id']?.toString();
    localtimeEpoch = json['localtime_epoch']?.toInt();
    localtime = json['localtime']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['region'] = region;
    data['country'] = country;
    data['lat'] = lat;
    data['lon'] = lon;
    data['tz_id'] = tzId;
    data['localtime_epoch'] = localtimeEpoch;
    data['localtime'] = localtime;
    return data;
  }
}

class HavaDurumu {
/*
{
  "location": {
    "name": "Van Ferit Melen Airport",
    "region": "Van",
    "country": "Turkey",
    "lat": 38.47,
    "lon": 43.33,
    "tz_id": "Europe/Istanbul",
    "localtime_epoch": 1676556678,
    "localtime": "2023-02-16 17:11"
  },
  "current": {
    "last_updated_epoch": 1676556000,
    "last_updated": "2023-02-16 17:00",
    "temp_c": -5,
    "temp_f": 23,
    "is_day": 1,
    "condition": {
      "text": "Partly cloudy",
      "icon": "//cdn.weatherapi.com/weather/64x64/day/116.png",
      "code": 1003
    },
    "wind_mph": 16.1,
    "wind_kph": 25.9,
    "wind_degree": 290,
    "wind_dir": "WNW",
    "pressure_mb": 1021,
    "pressure_in": 30.15,
    "precip_mm": 0,
    "precip_in": 0,
    "humidity": 49,
    "cloud": 75,
    "feelslike_c": -11.5,
    "feelslike_f": 11.4,
    "vis_km": 10,
    "vis_miles": 6,
    "uv": 1,
    "gust_mph": 15.4,
    "gust_kph": 24.8
  },
  "forecast": {
    "forecastday": [
      {
        "date": "2023-02-16",
        "date_epoch": 1676505600,
        "day": {
          "maxtemp_c": -4.6,
          "maxtemp_f": 23.7,
          "mintemp_c": -16,
          "mintemp_f": 3.2,
          "avgtemp_c": -9.6,
          "avgtemp_f": 14.6,
          "maxwind_mph": 15.4,
          "maxwind_kph": 24.8,
          "totalprecip_mm": 4.9,
          "totalprecip_in": 0.19,
          "totalsnow_cm": 3.99,
          "avgvis_km": 8.6,
          "avgvis_miles": 5,
          "avghumidity": 71,
          "daily_will_it_rain": 0,
          "daily_chance_of_rain": 67,
          "daily_will_it_snow": 0,
          "daily_chance_of_snow": 30,
          "condition": {
            "text": "Moderate or heavy snow showers",
            "icon": "//cdn.weatherapi.com/weather/64x64/day/371.png",
            "code": 1258
          },
          "uv": 1
        },
        "astro": {
          "sunrise": "06:57 AM",
          "sunset": "05:45 PM",
          "moonrise": "03:50 AM",
          "moonset": "12:56 PM",
          "moon_phase": "Waning Crescent",
          "moon_illumination": "25",
          "is_moon_up": 0,
          "is_sun_up": 0
        },
        "hour": [
          {
            "time_epoch": 1676494800,
            "time": "2023-02-16 00:00",
            "temp_c": -8,
            "temp_f": 17.6,
            "is_day": 0,
            "condition": {
              "text": "Heavy snow",
              "icon": "//cdn.weatherapi.com/weather/64x64/night/338.png",
              "code": 1225
            },
            "wind_mph": 8.5,
            "wind_kph": 13.7,
            "wind_degree": 308,
            "wind_dir": "NW",
            "pressure_mb": 1020,
            "pressure_in": 30.13,
            "precip_mm": 0.6,
            "precip_in": 0.02,
            "humidity": 84,
            "cloud": 78,
            "feelslike_c": -13.9,
            "feelslike_f": 7,
            "windchill_c": -13.9,
            "windchill_f": 7,
            "heatindex_c": -8,
            "heatindex_f": 17.6,
            "dewpoint_c": -10.2,
            "dewpoint_f": 13.6,
            "will_it_rain": 0,
            "chance_of_rain": 0,
            "will_it_snow": 1,
            "chance_of_snow": 88,
            "vis_km": 2,
            "vis_miles": 1,
            "gust_mph": 11.9,
            "gust_kph": 19.1,
            "uv": 1
          }
        ]
      }
    ]
  }
} 
*/

  HavaDurumuLocation? location;
  HavaDurumuCurrent? current;
  HavaDurumuForecast? forecast;

  HavaDurumu({
    this.location,
    this.current,
    this.forecast,
  });
  HavaDurumu.fromJson(Map<String, dynamic> json) {
    location = (json['location'] != null)
        ? HavaDurumuLocation.fromJson(json['location'])
        : null;
    current = (json['current'] != null)
        ? HavaDurumuCurrent.fromJson(json['current'])
        : null;
    forecast = (json['forecast'] != null)
        ? HavaDurumuForecast.fromJson(json['forecast'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (location != null) {
      data['location'] = location!.toJson();
    }
    if (current != null) {
      data['current'] = current!.toJson();
    }
    if (forecast != null) {
      data['forecast'] = forecast!.toJson();
    }
    return data;
  }
}
