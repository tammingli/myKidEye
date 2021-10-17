import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'navigation_drawer.dart';

class GoogleMapScreen extends StatefulWidget {
  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen>{
  Set<Marker>_markers ={};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(3.223902,101.730243),
          infoWindow: InfoWindow(
            title: 'Our Optometris Vision Care',
            snippet: 'Vision Care',
          ),
      ),
      );
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lokasi'),
        backgroundColor: Colors.blue[300],
      ),
      drawer: new NavigationDrawer(),
      body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: _markers,
          initialCameraPosition: CameraPosition(target:LatLng(3.223902,101.730243),
            zoom: 15,
          ),
        ),
    );

  }
}
  
