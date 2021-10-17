import 'package:flutter/material.dart';
import 'package:mykideye/faq_main.dart';
import 'package:mykideye/hubungi_kami.dart';
import 'package:mykideye/location.dart';
import 'package:mykideye/penyakit_mata.dart';
import 'package:mykideye/search.dart';

import 'navigation_drawer.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyKidEye'),
        backgroundColor: Colors.blue[300],
      ),
      drawer: NavigationDrawer(),
      body: Container(
        color: Color(0xFFE0EAFA),
        child: Column(
        children:<Widget> [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text('Aplikasi MyKidEye adalah hasil kerjasama di antara Fakulti Sains Kesihatan (FSK) dan Fakulti Teknologi dan Sains Maklumat (FTSM), Universiti Kebangsaan Malaysia (UKM)',
                  textAlign: TextAlign.justify,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
              ),
              margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 20.0),
              height: 220.0,
              width: 420.0,
              decoration: new BoxDecoration(
                  image:DecorationImage(
                    colorFilter: new ColorFilter.mode(Colors.black12.withOpacity(0.4), BlendMode.dstATop),
                    image: AssetImage('image/mainimage.jpg'),
                    fit: BoxFit.fill,
                  )
              ),
            ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                Column(
                  children: <Widget>[
                    MaterialButton(
                      color: Colors.blue,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PenyakitMata()));
                      },
                      textColor: Colors.white,
                      child:Icon(
                        Icons.view_list_rounded,
                        size: 40,
                      ),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(16),
                    ),
                    Spacer(flex: 1),
                    Text("Jenis Masalah "),
                    Text("Penglihatan"),
                    Spacer(flex: 2),
                  ],
                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Search()));
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Icon(
                        Icons.search_rounded,
                        size: 40,
                      ),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(16),
                    ),
                    Spacer(flex: 1),
                    Text("Carian"),
                    Spacer(flex: 2),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                Column(
                  children: <Widget>[
                    MaterialButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HubungiKami()));
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Icon(
                        Icons.call_rounded,
                        size: 40,
                      ),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(16),
                    ),
                    Spacer(flex: 1),
                    Text("Hubungi Klinik FSK"),
                    Spacer(flex: 2),
                  ],
                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleMapScreen()));
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Icon(
                        Icons.location_on_rounded,
                        size: 40,
                      ),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(16),
                    ),
                    Spacer(flex: 1),
                    Text("Lokasi Klinik FSK"),
                    Spacer(flex: 2),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    MaterialButton(
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FaqMain()));
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Icon(
                        Icons.help_rounded,
                        size: 40,
                      ),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(16),
                    ),
                    Spacer(flex: 1),
                    Text("FAQ"),
                    Spacer(flex: 2),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}





