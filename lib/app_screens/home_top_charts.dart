import 'dart:math';

import 'package:flutter/material.dart';

class HomeTopChartsTabs extends StatefulWidget {
  final Widget child;

  HomeTopChartsTabs({Key key, this.child}) : super(key: key);

  _HomeTopChartState createState() => _HomeTopChartState();
}

class _HomeTopChartState extends State<HomeTopChartsTabs> {
  @override
  Widget build(BuildContext context) {
    return getListItem();
  }
}

List<String> getListElement() {
  var items = List<String>.generate(1000, (counter) => "Item no. $counter");
  return items;
}
String generateNumber(){
  var random=Random();
  int luckyNumber=random.nextInt(9);
  return "4.$luckyNumber";
}

Widget getListItem() {
  var listItems = getListElement();
  var listview = ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Padding(
          padding:EdgeInsets.only(top:10.0),
          child: ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage("https://picsum.photos/seed/picsum/200/300"),
                 fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text("${listItems[index]}"),
            subtitle: Text("Commpany Name"),
//          trailing: Center(
//            child: Row(children: <Widget>[
//            Text(
//            generateNumber(),
//            style: TextStyle(
//              color: Colors.black, fontWeight: FontWeight.bold,),
//          ),
//            Icon(Icons.star,size: 10.0,)
//          ]),
//          )
          ),
        );


      });
  return listview;
}
