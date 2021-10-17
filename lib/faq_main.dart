import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mykideye/faq_second.dart';
import 'package:mykideye/home.dart';
import 'navigation_drawer.dart';
import 'package:http/http.dart' as http;

class FaqMain extends StatefulWidget {
  @override
  _FaqMainState createState() => new _FaqMainState();
}

class _FaqMainState extends State<FaqMain>{

  Future<List> getfaq() async{
    final response= await http.get(Uri.parse("http://lrgs.ftsm.ukm.my/users/a171015/mykideye/getfaq.php"));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FAQ'),
          backgroundColor: Colors.blue[300],
        ),
        drawer: new NavigationDrawer(),
      body: new Container(
        color: Color(0xFFE0EAFA),
        child: FutureBuilder<List>(
            future: getfaq(),
            builder: (context,snapshot) {
              if(snapshot.hasError)print(snapshot.error);
              return snapshot.hasData
                  ? new ItemList(list: snapshot.data)
                  :new Center(child: new CircularProgressIndicator(),);
            }
        ),
      ),

    );
  }
}

class ItemList extends StatelessWidget{
  final List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            title: Text(list[i]['soalan_q'], textAlign: TextAlign.left, style: TextStyle(fontSize: 16),),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new FaqDetail(list: list, index: i,)
              )
              );
            }
          );
        }
    );
  }
}