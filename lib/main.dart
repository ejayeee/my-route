import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: const MyHomePage(title: 'My way'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: FlutterMap(
    options: MapOptions(
    center: LatLng(51.509364, -0.128928),
    zoom: 9.2,
    ),
    layers: [
    TileLayerOptions(
    urlTemplate: "https://api.mapbox.com/styles/v1/ejayeee/cl62hcvke001h14pntikeofca/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZWpheWVlZSIsImEiOiJjbDVzbHd1bWIwOGtyM2NwMzQxdTloeGh2In0.ZG_zLWjR7rGr7nbHv_Vz-g",
    additionalOptions: {
      'accessToken': 'pk.eyJ1IjoiZWpheWVlZSIsImEiOiJjbDVzbHd1bWIwOGtyM2NwMzQxdTloeGh2In0.ZG_zLWjR7rGr7nbHv_Vz-g',
      'id': 'mapbox.mapbox-streets-v8'
    },
      userAgentPackageName: 'com.example.app',
    ),
    ],
    nonRotatedChildren: [
    AttributionWidget.defaultWidget(
    source: 'OpenStreetMap contributors',
    onSourceTapped: null,
    ),
    ],
    );
    );
  }
}
