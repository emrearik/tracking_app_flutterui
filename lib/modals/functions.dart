import 'package:flutter/material.dart';
import '../screens/details.dart';

Color parseColor(String color) {
  String hex = color.replaceAll("#", "");
  if (hex.isEmpty) hex = "ffffff";
  if (hex.length == 3) {
    hex =
        '${hex.substring(0, 1)}${hex.substring(0, 1)}${hex.substring(1, 2)}${hex.substring(1, 2)}${hex.substring(2, 3)}${hex.substring(2, 3)}';
  }
  Color col = Color(int.parse(hex, radix: 16)).withOpacity(1.0);
  return col;
}

Widget parcelWidget(context, imgPath, name, transportation, status) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ParcelDetails()),
      );
    },
    child: Container(
      margin: EdgeInsets.only(top: 5),
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(158, 158, 158, 200),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage(imgPath),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 15),
              Text(
                name,
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                transportation,
                style: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width - 228,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                      color: status == "Delivered" ? Colors.orange : Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(width: 5),
                Text(
                  status,
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget trackingDetails(comment, destination, status) {
  return Row(children: <Widget>[
    Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: status == true ? Colors.red.shade200 : Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    SizedBox(width: 20),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          comment,
          style:
              TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          destination,
          style: TextStyle(fontFamily: 'Montserrat', color: Colors.grey),
        ),
      ],
    )
  ]);
}
