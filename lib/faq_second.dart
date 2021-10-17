import 'package:flutter/material.dart';

class FaqDetail extends StatefulWidget{
  List list;
  int index;
  FaqDetail({this.index, this.list});
  @override
  _FaqDetailState createState() => new _FaqDetailState();
}

class _FaqDetailState extends State<FaqDetail>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FAQ"),
          backgroundColor: Colors.blue[300],
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Text("${widget.list[widget.index]['soalan_q']}",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),textAlign: TextAlign.justify,),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(10, 10, 10, 15),
                child: Text("${widget.list[widget.index]['soalan_ans']}",style: TextStyle(fontSize: 18),textAlign: TextAlign.justify,),
              ),
            ],
          ),
        )
    );
  }

}