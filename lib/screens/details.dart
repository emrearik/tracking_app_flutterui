import 'package:flutter/material.dart';
import '../modals/functions.dart';
import 'homescreen.dart';

class ParcelDetails extends StatefulWidget {
  @override
  _ParcelDetailsState createState() => _ParcelDetailsState();
}

class _ParcelDetailsState extends State<ParcelDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        actions: <Widget>[
          Icon(Icons.delete, color: Colors.black),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 32,
                        child: Image(image: AssetImage("assets/box.png")),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "MG 2256 156 42",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5),

                //InfoBox
                Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: parseColor("#3F28B6"),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 100,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 20, left: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "from",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text("America, Houston",
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.white))
                                  ],
                                ),
                              ),
                              flex: 2,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 23),
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.traffic, color: Colors.white),
                                    Text("6 days",
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("To",
                                            style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                            )),
                                        SizedBox(height: 10),
                                        Text("Canada, Toronto",
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                color: Colors.white))
                                      ],
                                    )),
                                flex: 2)
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 25.0, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Type",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                                Text("Weight",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                                Text("Status",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(left: 25, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Transit",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white)),
                                Text("Departure",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white)),
                                Text("890 g",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white)),
                              ],
                            ),
                          )
                        ],
                      )),
                    ],
                  ),
                ), //Info Box Container End
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10),
                      Text(
                        "History",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: <Widget>[
                          trackingDetails("Estimated delivery time is 16 July",
                              "Canada,Toronto", false),
                          SizedBox(height: 30),
                          trackingDetails("Arrived in Destination Country",
                              "12 July,12:00PM Canada", true),
                          SizedBox(height: 30),
                          trackingDetails("Sent to destination Country",
                              "11 July,06:00 PM America,Houston", false),
                          SizedBox(height: 30),
                          trackingDetails("Accepted by UPS Express Plus",
                              "8 July,06:00 PM America,Houston", false),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
