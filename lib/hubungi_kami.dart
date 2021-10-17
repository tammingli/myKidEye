
import 'package:flutter/material.dart';
import 'navigation_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class HubungiKami extends StatelessWidget {

  void customLaunch(command) async{
    if(await canLaunch(command)){
      await launch(command);
    }
    else
      print('I could not launch $command');
  }

  void launchWhatsapp({@required number, @required message}) async{
    String url = "whatsapp://send?phone=$number&text=$message";
    if(await canLaunch(url)){
      await launch(url);
    }
    else
      print('I could not launch $url');
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hubungi Kami'),
        backgroundColor: Colors.blue[300],
      ),
      drawer: new NavigationDrawer(),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(10, 5, 10, 25),
                child: Text("Untuk mendapat maklumat yang lanjut atau janji temu dengan klinik FSK boleh melalui", textAlign: TextAlign.justify, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon:Image.asset('image/emaillogo.png'),
                          onPressed: (){
                            customLaunch('mailto:tmvc.ouroptom@gmail.com');
                          },
                          iconSize: 100.0,
                        ),
                        Text("Email",style: TextStyle(fontSize: 20)),

                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon:Image.asset('image/whatsapplogo.png'),
                          onPressed: (){
                            launchWhatsapp(number: "+60102384904", message: "Hello");
                          },
                          iconSize: 100.0,
                        ),
                        Text("WhatsApp",style: TextStyle(fontSize: 20)),

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
                        IconButton(
                          icon:Image.asset('image/sms.png'),
                          onPressed: (){
                            customLaunch('sms: +60102384904');
                          },
                          iconSize: 100.0,
                        ),
                        Text("SMS",style: TextStyle(fontSize: 20)),

                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon:Image.asset('image/call.png'),
                          onPressed: (){
                            customLaunch('tel: +60102384904');
                          },
                          iconSize: 100.0,
                        ),
                        Text("Call",style: TextStyle(fontSize: 20)),

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