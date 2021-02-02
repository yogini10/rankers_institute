import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rankers_institute/globals.dart' as g;

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<Marker> allMarkers = [];

  @override
  void initState() {
    super.initState();
    allMarkers.add(Marker(
      markerId: MarkerId('rankers'),
      draggable: false,
      position: LatLng(19.170885, 72.953498),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  });
            },
          ),
          backgroundColor: const Color(0xffffffff),
          title: Text(
            'Ranker\'s Institute',
            style: TextStyle(
              fontFamily: 'Lucida Bright',
              fontSize: 25,
              color: const Color(0xff0e0d0d),
            ),
          ),
        ),
        backgroundColor: Color(0xffcaf0f8),
        body: Center(
          child: Container(
            height: g.height * 0.7,
            width: g.width * 0.8,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                  target: LatLng(19.1708861, 72.9534997), zoom: 30.0),
              markers: Set.from(allMarkers),
            ),
          ),
        ),
      ),
    );
  }
}
