import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../modals/functions.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              //Top BAR
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: parseColor("#3F28B6"),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 200),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.all(7),
                                  width: 40,
                                  height: 40,
                                  child: Image(
                                    image: AssetImage("assets/qrscanner.png"),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, right: 10),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("assets/avatar.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 170,
                          child: SvgPicture.asset("assets/man.svg"),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Track Your Parcel",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          "Enter your track number\n to search your parcel",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 42,
                          width: MediaQuery.of(context).size.width - 50,
                          child: Material(
                            borderRadius: BorderRadius.circular(10),
                            shadowColor: Colors.white,
                            color: Colors.white,
                            elevation: 7,
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(Icons.search),
                                    color: parseColor("#3F28B6"),
                                    onPressed: () {}),
                                Text(
                                  "Search by track number",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              //Bottom Bar
              Container(
                child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        //Your parcels row and settings button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Your parcels",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(158, 158, 158, 200),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                  icon: Icon(Icons.settings), onPressed: () {}),
                            ),
                          ],
                        ),
                        //Parcel list called functions
                        parcelWidget(
                          context,
                          "assets/dhl.png",
                          "RD 2256 1562 42",
                          "Japan ← Russia",
                          "Delivered",
                        ),
                        Divider(),
                        parcelWidget(
                          context,
                          "assets/fedex.png",
                          "CH 2256 1562 42",
                          "Indonesia ← Poland",
                          "Transit",
                        ),
                        Divider(),
                        parcelWidget(
                          context,
                          "assets/cdek.png",
                          "MG 2256 1562 42",
                          "America ← Canada",
                          "Transit",
                        ),
                        Divider(),
                        parcelWidget(
                          context,
                          "assets/cdek.png",
                          "MG 2256 1562 42",
                          "America ← Canada",
                          "Transit",
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
