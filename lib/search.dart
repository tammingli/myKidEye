import 'dart:developer';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mykideye/peyakit_detail.dart';
import 'search_model.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<SearchModel> listData = [],
      backupList = [];
  bool isSearch = false;

  Future<List> getpenyakitmata() async {
    final responseData =
    await http.get(
        Uri.parse("http://lrgs.ftsm.ukm.my/users/a171015/mykideye/getpenyakitmata.php"));
    return searchModelFromJson(responseData.body);
  }

  void search(String query) {
    listData = backupList;
    if (query.isNotEmpty) {
      listData = listData
          .where((e) =>
          e.penyakit_simptom.toString().toLowerCase().contains(query))
          .toList();
    }
    setState(() {});
  }



  Icon sr = Icon(Icons.search);

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
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearch
            ? Text("Carian")
            : TextField(
          style: TextStyle(color: Colors.white),
          onChanged: (query) {
            log("quer $query");
            // method search
            search(query);
          },
          decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: "Masukkan simptom",
              hintStyle: TextStyle(color: Colors.black54)),
        ),
        actions: <Widget>[
          isSearch
              ? IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              setState(() {
                this.isSearch = false;
              });
              search("");
            },
          )
              : IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                this.isSearch = true;
              });
            },
          )
        ],
      ),
      body:
      ListView.builder(
          itemCount: listData?.length ?? 0,
          itemBuilder: (ctx, i) {

            return new Container(

              child: new Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
                child: ListTile(
                  title: new Text(
                    listData[i].penyakit_id,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  subtitle: Text(listData[i].penyakit_simptom),
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) =>
                            PenyakitDetail(
                              listData[i],
                            )));
                  },
                ),
              ),
            );
          }),
    );
  }
}
