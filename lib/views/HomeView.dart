import 'package:api_cours/model/GeoPosition.dart';
import 'package:api_cours/services/ApiService.dart';
import 'package:api_cours/services/LocationService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class HomeView extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeView> {
  GeoPosition? userPosition;

  @override
  void initState() {
    getUserLocation();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userPosition?.city ?? "Ma météo"),
      ),
      body: Center(
        child: Text(
            "Notre position: \n${userPosition?.lat}\n${userPosition?.lon}"),
      ),
    );
  }

  getUserLocation() async {
    final loc = await LocationService().getCity();
    if (loc != null) {
      setState(() {
        userPosition = loc;
        ApiService().callApi(userPosition!);
      });
    }
  }
}
