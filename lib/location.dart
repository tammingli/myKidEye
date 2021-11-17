import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'navigation_drawer.dart';

class GoogleMapScreen extends StatefulWidget {
  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen>{



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lokasi Kami'),
        backgroundColor: Colors.blue[300],
      ),
      drawer: new NavigationDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width ,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('image/lokasi.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Text(
                    'Our Optometris Vision Care', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 100.0,
                height: 50.0,
                child: InkWell(
                  onTap: () async {
                    bool isGoogleMapAvailable =
                    await MapLauncher.isMapAvailable(MapType.google);
                    if(isGoogleMapAvailable){
                      MapsLauncher.launchCoordinates(
                          3.223902,101.730243);
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.blue[200],
                    ),
                    child: Center(
                      child: Text('Peta', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),

                    ),
                  ),
                ),
              ),
            ],
          )
        )
      )
    );

  }
}
