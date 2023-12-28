import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:geolocator/geolocator.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  late GoogleMapController mapController;
  final TextEditingController _searchController = TextEditingController();

  late LatLng _currentPosition;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  getLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    double lat = position.latitude;
    double long = position.longitude;

    LatLng location = LatLng(lat, long);

    setState(() {
      _currentPosition = location;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Column(children: [
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 19, 17, 17),
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            /* -- Text and Icon -- */
            hintText: "Search Place...",
            hintStyle: const TextStyle(
              fontSize: 18,
              color: Color(0xFFB3B1B1),
            ), // TextStyle
            suffixIcon: const Icon(
              Icons.search,
              size: 26,
              color: Colors.black54,
            ), // Icon
            /* -- Border Styling -- */
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 2.0,
                color: Color(0xFFFF0000),
              ), // BorderSide
            ), // OutlineInputBorder
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 2.0,
                color: Colors.grey,
              ), // BorderSide
            ), // OutlineInputBorder
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 2.0,
                color: Colors.grey,
              ), // BorderSide
            ), // OutlineInputBorder
          ), // InputDecoration
        ), // TextField
      ])), // Row,

      body: Stack(children: [
        GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
            target: _currentPosition,
            zoom: 16.0,
          ),
        ),
      ]),
    );
  }
}
