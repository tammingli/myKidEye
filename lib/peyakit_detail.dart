import 'package:flutter/material.dart';
import 'package:mykideye/search_model.dart';


// ignore: must_be_immutable
class PenyakitDetail extends StatefulWidget{
  SearchModel listData;
  PenyakitDetail(this.listData);

  @override
  _PenyakitDetailState createState()=> _PenyakitDetailState();

}

class _PenyakitDetailState extends State<PenyakitDetail>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.listData.penyakit_id}'),
        backgroundColor: Colors.blue[300],
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              new Container(
                  width: 390,
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
                  margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
                  decoration: BoxDecoration(
                    color: Color(0xFFe3fcfc),
                    border: Border(
                      top: BorderSide(color:Color(0xFF707070),width: 1.0),
                      bottom: BorderSide(color:Color(0xFF707070),width: 1.0),
                    ),
                  ),
                child: Center(
                  child: Text('Pengenalan', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
              ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
              child: Column(
                children: <Widget>[
                  Text('${widget.listData.penyakit_pengenalan}',style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
                  Image.network('http://lrgs.ftsm.ukm.my/users/a171015/mykideye/image/'+widget.listData.pengenalan_gambar),
                ],
              ),
            ),
              Container(
                width: 390,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                decoration: BoxDecoration(
                  color: Color(0xFFe3fcfc),
                  border: Border(
                    top: BorderSide(color:Color(0xFF707070),width: 1.0),
                    bottom: BorderSide(color:Color(0xFF707070),width: 1.0),
                  ),
                ),
                child: Center(
                  child: Text('Sebab', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
                child: Column(
                  children: <Widget>[
                    Text('${widget.listData.penyakit_sebab}',style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
                    Image.network('http://lrgs.ftsm.ukm.my/users/a171015/mykideye/image/'+widget.listData.sebab_gambar),
                  ],
                ),
              ),
              Container(
                width: 390,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                decoration: BoxDecoration(
                  color: Color(0xFFe3fcfc),
                  border: Border(
                    top: BorderSide(color:Color(0xFF707070),width: 1.0),
                    bottom: BorderSide(color:Color(0xFF707070),width: 1.0),
                  ),
                ),
                child: Center(
                  child: Text('Simptom', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
                child: new Text('${widget.listData.penyakit_simptom}',style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
              ),
              Container(
                width: 390,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                decoration: BoxDecoration(
                  color: Color(0xFFe3fcfc),
                  border: Border(
                    top: BorderSide(color:Color(0xFF707070),width: 1.0),
                    bottom: BorderSide(color:Color(0xFF707070),width: 1.0),
                  ),
                ),
                child: Center(
                  child: Text('Faktor Risiko', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
                child: new Text('${widget.listData.penyakit_faktorrisiko}',style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
              ),
              Container(
                width: 390,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                decoration: BoxDecoration(
                  color: Color(0xFFe3fcfc),
                  border: Border(
                    top: BorderSide(color:Color(0xFF707070),width: 1.0),
                    bottom: BorderSide(color:Color(0xFF707070),width: 1.0),
                  ),
                ),
                child: Center(
                  child: Text('Rawatan', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
                child: Column(
                  children: <Widget>[
                    Text('${widget.listData.penyakit_rawatan}',style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),
                    Image.network('http://lrgs.ftsm.ukm.my/users/a171015/mykideye/image/'+widget.listData.rawatan_gambar),
                    Text('${widget.listData.penyakit_rawatan2}',style: TextStyle(fontSize: 16),textAlign: TextAlign.left,),

                  ],
                ),
              ),
              Container(
                width: 390,
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                decoration: BoxDecoration(
                  color: Color(0xFFe3fcfc),
                  border: Border(
                    top: BorderSide(color:Color(0xFF707070),width: 1.0),
                    bottom: BorderSide(color:Color(0xFF707070),width: 1.0),
                  ),
                ),
                child: Center(
                  child: Text('Kesan', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
                child: Column(
                  children: <Widget>[
                    Text('${widget.listData.penyakit_kesan}',style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
                    Text('${widget.listData.penyakit_komplikasi1}',style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
                    Image.network('http://lrgs.ftsm.ukm.my/users/a171015/mykideye/image/'+widget.listData.komplikasi_gambar1),
                    Text('${widget.listData.penyakit_komplikasi2}',style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
                    Image.network('http://lrgs.ftsm.ukm.my/users/a171015/mykideye/image/'+widget.listData.komplikasi_gambar2),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),

    );
  }
}