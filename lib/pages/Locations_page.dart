import 'package:merchant_app/utilities/standardCard.dart';
import 'package:flutter/material.dart';
import '../utilities/standardCard.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatelessWidget {

  List<StandardCard> cardList = [];
  initState() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    cardList.add(
      StandardCard(
        latitude: position.latitude.toString(),
        longitude: position.longitude.toString(),
        tag: position.accuracy.toString(),
        elapsedTime: "1s"
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Locations",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: cardList
          ),
        ),
      ),
    );
  }
}
