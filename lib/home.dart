import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

import './display.dart';
import './fab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'HOME',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: GridView.builder(
                //shrinkWrap: true,
                padding: const EdgeInsets.all(5),
                itemCount: a.length,
                itemBuilder: (BuildContext context, int index) {
                  return Display(a[index]);
                },
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 90,
                  childAspectRatio: 0.9,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      GroovinMaterialIcons.view_dashboard,
                      color: Color(0xFFE83350),
                      size: 40,
                    ),
                    Text('Dashboard', style: TextStyle(fontSize: 10))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      GroovinMaterialIcons.label,
                      color: Color(0xFFE83350),
                      size: 40,
                    ),
                    Text('Label', style: TextStyle(fontSize: 10))
                  ],
                ),
              ],
            ),
            Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          ],
        ),
      ), 
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFE83350),
        //mini: true,
        child: Icon(GroovinMaterialIcons.pound),
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))
                  //circular(20.0),
                  ),
              context: context,
              builder: (builder) {
                return FAB();
              });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  List<String> a = [
    'https://picsum.photos/id/1/200/300',
    'https://picsum.photos/200/300?random=2',
    'https://picsum.photos/200/300?random=3',
    'https://picsum.photos/200/300?random=4',
    'https://picsum.photos/200/300?random=5',
    'https://picsum.photos/200/300?random=6',
    'https://picsum.photos/200/300?random=7',
    'https://picsum.photos/200/300?random=8',
    'https://picsum.photos/200/300?random=9',
    'https://picsum.photos/200/300?random=10',
    'https://picsum.photos/200/300?random=12',
    'https://picsum.photos/200/300?random=13',
    'https://picsum.photos/200/300?random=21',
    'https://picsum.photos/200/300?random=24',
    'https://picsum.photos/id/1/200/300',
    'https://picsum.photos/200/300?random=2',
    'https://picsum.photos/200/300?random=3',
    'https://picsum.photos/200/300?random=4',
    'https://picsum.photos/200/300?random=5',
    'https://picsum.photos/200/300?random=6',
    'https://picsum.photos/200/300?random=7',
    'https://picsum.photos/200/300?random=8',
    'https://picsum.photos/200/300?random=9',
    'https://picsum.photos/200/300?random=10',
    'https://picsum.photos/200/300?random=12',
    'https://picsum.photos/200/300?random=13',
    'https://picsum.photos/200/300?random=21',
    'https://picsum.photos/200/300?random=24',
    'https://picsum.photos/id/1/200/300',
    'https://picsum.photos/200/300?random=2',
    'https://picsum.photos/200/300?random=3',
    'https://picsum.photos/200/300?random=4',
    'https://picsum.photos/200/300?random=5',
    'https://picsum.photos/200/300?random=6',
    'https://picsum.photos/200/300?random=7',
    'https://picsum.photos/200/300?random=8',
    'https://picsum.photos/200/300?random=9',
    'https://picsum.photos/200/300?random=10',
    'https://picsum.photos/200/300?random=12',
    'https://picsum.photos/200/300?random=13',
    'https://picsum.photos/200/300?random=21',
    'https://picsum.photos/200/300?random=24',
  ];

    // // List imgData;

  // // final String url = 'https://picsum.photos/v2/list?page=1&limit=50';
  // // Future getData() async {
  // //   var response = await http.get(Uri.encodeFull(url),
  // //       headers: {'Content-Type': 'application/json'});

  // //   List data = jsonDecode(response.body);
  // //   ;

  // //   setState(() {
  // //     imgData = data;
  // //   });
  // // }

  // // @override
  // // void initState() {
  // //   super.initState();
  // //   this.getData();
  // // }
}
