import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flushbar/flushbar.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'ALBUM',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('Trending', style: TextStyle(fontSize: 20))),
            Swiper(
              itemCount: img.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Image.network(
                    img[index],
                    fit: BoxFit.fill,
                  ),
                );
              },
              viewportFraction: 0.8,
              scale: 0.9,
              layout: SwiperLayout.STACK,
              itemHeight: 400,
              itemWidth: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    GroovinMaterialIcons.border_color,
                    color: Colors.lime,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    GroovinMaterialIcons.share,
                    color: Colors.lime,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    GroovinMaterialIcons.folder_download,
                    color: Colors.lime,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    GroovinMaterialIcons.gesture_two_tap,
                    color: Colors.lime,
                  ),
                  onPressed: () {
                    Flushbar(
                      title: "Shot by Ninja",
                      message: 'This Image Has 4.6k followers',
                      backgroundGradient: LinearGradient(
                        colors: [Colors.blueGrey, Colors.black54],
                      ),
                      backgroundColor: Colors.red,
                      boxShadows: [
                        BoxShadow(
                          color: Colors.blue[800],
                          offset: Offset(0.0, 2.0),
                          blurRadius: 3.0,
                        ),
                      ],
                      flushbarStyle: FlushbarStyle.FLOATING,
                      isDismissible: false,
                      duration: Duration(seconds:2),
                    )..show(context);
                  },
                ),
              ],
            )
          ],
        ));
  }

  List<String> img = [
    'https://picsum.photos/id/1/200/300?random=66',
    'https://picsum.photos/200/300?random=99?grayscale',
    'https://picsum.photos/200/300?random=100',
    'https://picsum.photos/200/300?random=40',
    'https://picsum.photos/200/300?random=5',
    'https://picsum.photos/200/300?random=16?grayscale',
    'https://picsum.photos/200/300?random=72',
    'https://picsum.photos/200/300?random=56',
    'https://picsum.photos/200/300?random=97',
    'https://picsum.photos/200/300?random=104?grayscale',
    'https://picsum.photos/200/300?random=126',
    'https://picsum.photos/200/300?random=133',
    'https://picsum.photos/200/300?random=221',
  ];
}
