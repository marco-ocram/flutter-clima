import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/weather.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    getlocationData();
  }

  void getlocationData() async {
    WeatherModel weatherModel = WeatherModel();
    var weatherdata = await weatherModel.getlocationweather();

    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(locationWeather: weatherdata,);
    },));
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: SpinKitChasingDots(
            color: Colors.white,
            size: 50.0,
          ),
        ),

      );
    }
  }

