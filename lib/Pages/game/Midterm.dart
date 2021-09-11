import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class OlympicBoxing extends StatefulWidget {
  const OlympicBoxing({Key? key}) : super(key: key);

  @override
  _OlympicBoxingState createState() => _OlympicBoxingState();
}




class _OlympicBoxingState extends State<OlympicBoxing> {





  Widget build(BuildContext context) {


    return Scaffold(
      appBar: new AppBar(title: new Text('OLYMPIC BOXING SCORING')),
        body: Container(

         child: Column(

            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded (child: Container(alignment: Alignment.center,
                      height: 100,
                      child : Image(
                        image : AssetImage("assets/images/logo.png"),
                        fit: BoxFit.contain,
                      )
                  )
                  )
                ],
              ),
              Row(children: [
                Expanded(
                  child: Container(
                    height: 20,
                    color: Colors.black,
                    child: Text(
                      'Women\'s Light (57-60) Semi-Final',
                      style: TextStyle(
                        color : Colors.white,
                        fontSize: 15.0
                      ),
                      textAlign: TextAlign.center,

                    ),
                  ),
                )
              ],
              ),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.person, // รูปไอคอน
                  size: 80.0, // ขนาดไอคอน
                  color: Colors.red, // สีไอคอน
                ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'HARRINGTON Kellie Anne',
                //textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22.0),
              ),
            ],
          ),





        ]

          ),
        ]
        ),


    ),
    );



  }
}
