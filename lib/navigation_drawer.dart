import 'package:flutter/material.dart';
import 'package:mykideye/faq_main.dart';
import 'package:mykideye/hubungi_kami.dart';
import 'package:mykideye/location.dart';
import 'package:mykideye/penyakit_mata.dart';
import 'package:mykideye/search.dart';


import 'home.dart';

class NavigationDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('MyKidEye', style:TextStyle(color: Colors.black87,fontSize: 25,fontWeight: FontWeight.w900),),
            decoration: BoxDecoration(
              color: Colors.black12,
              image: DecorationImage(
                  colorFilter: new ColorFilter.mode(Colors.black12.withOpacity(0.4), BlendMode.dstATop),
                  image: AssetImage('image/mainimage.jpg'),
                  fit: BoxFit.cover),
            ),
            currentAccountPicture: CircleAvatar(
              minRadius: 80.0,
              backgroundColor: Colors.transparent,
              backgroundImage: ExactAssetImage("image/logo.png"),
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child:  Column(
            children: <Widget>[
              SizedBox(height: 2.0),
              ListTile(
                  title: Text("Laman Utama", style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),
                  ),
                leading: Icon(Icons.home_rounded),
                onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                },
              ),
              ListTile(
                title: Text("Jenis Masalah Penglihatan", style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),
                ),
                leading: Icon(Icons.view_list_rounded, color: Colors.redAccent,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PenyakitMata()));
                },
              ),
              ListTile(
                title: Text("Carian", style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),
                ),
                leading: Icon(Icons.search_rounded,color: Colors.orange,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Search()));
                },
              ),
              ListTile(
                title: Text("Hubungi Kami", style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),
                ),
                leading: Icon(Icons.call_rounded, color: Colors.amber,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HubungiKami()));
                },
              ),
              ListTile(
                title: Text("Lokasi", style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),
                ),
                leading: Icon(Icons.location_on_rounded, color: Colors.lightGreen,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleMapScreen()));
                },
              ),
              ListTile(
                title: Text("FAQ", style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),
                ),
                leading: Icon(Icons.help_rounded, color: Colors.blue,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FaqMain()));
                },
              ),
            ],
          ),
          )
        ],
      ),
    );
  }
}
