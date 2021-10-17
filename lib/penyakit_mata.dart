import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mykideye/home.dart';
import 'package:mykideye/peyakit_detail.dart';
import 'package:mykideye/search_model.dart';
import 'navigation_drawer.dart';
import 'package:http/http.dart' as http;

class PenyakitMata extends StatefulWidget {
  @override
  _PenyakitMataState createState() => new _PenyakitMataState();
}

class _PenyakitMataState extends State<PenyakitMata>{
  List<SearchModel> listData = [], backupList = [];
  bool isSearch = false;
  Future<List> getpenyakitmata() async {
    final responseData =
    await http.get(Uri.parse("http://lrgs.ftsm.ukm.my/users/a171015/mykideye/getpenyakitmata.php"));
    return searchModelFromJson(responseData.body);
  }

  init() async {
    final result = await getpenyakitmata();
    if (result != null) {
      setState(() {

        listData = result;

        backupList.addAll(listData);
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Jenis Masalah Penglihatan'),
          backgroundColor: Colors.blue[300],
        ),
        drawer: new NavigationDrawer(),
      body: new ListView.builder(
          itemCount: listData?.length ?? 0,
          itemBuilder: (ctx, i) {
            return new Container(
              height: 150,
              child: new Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                ),
                margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
                color: Color(0xFFA8C8FC),
                child: Center(
                  child: ListTile(
                    title: Center(
                      child: new Text(
                        listData[i].penyakit_id,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => PenyakitDetail(
                            listData[i],
                          )));
                    },
                  ),
                ),
              ),
            );
          }),
    );
  }
}





