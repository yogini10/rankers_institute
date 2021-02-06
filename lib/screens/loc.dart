import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/widgets/newcontappbar.dart';

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
        appBar: ncAppBaer(),
        backgroundColor: Color(0xffcaf0f8),
        body: Center(
          child: Container(
            width: g.width * 0.9,
            height: g.height * 0.8,
            decoration: BoxDecoration(
              border: Border.all(width: 0.5),
              borderRadius: BorderRadius.circular(g.width * 0.2),
              color: Color(0xffffffff).withOpacity(0.55),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: g.width * 0.05,
                right: g.width * 0.05,
                top: g.height * 0.05,
                bottom: g.height * 0.05,
              ),
              child: Column(
                children: [
                  Container(
                    width: g.width * 0.8,
                    child: Text(
                      'Meet us at our workplace',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 24,
                        color: const Color(0xff707070),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: g.height * 0.035,
                  ),
                  Container(
                    height: g.height * 0.6,
                    width: g.width * 0.75,
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                          target: LatLng(19.1708861, 72.9534997), zoom: 20.0),
                      markers: Set.from(allMarkers),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
