import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var num = Random().nextInt(100);
    return Scaffold(
      //Alt+Enter คีย์ลัด Wrap with ...
      appBar: AppBar(
        title: Text('✨GUESS THE NUMBER✨'),
      ),
      body: Container(
        // เทียบเท่า div ในภาษา HTML
        color: Colors.yellow.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.person, // รูปไอคอน
                  size: 80.0, // ขนาดไอคอน
                  color: Colors.pink.shade300, // สีไอคอน
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ภัทราภรณ์ อึ้งเจริญวงค์',
                      //textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22.0),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star, // รูปไอคอน
                          size: 18.0, // ขนาดไอคอน
                          color: Colors.orange, // สีไอคอน
                        ),
                        Icon(
                          Icons.star, // รูปไอคอน
                          size: 18.0, // ขนาดไอคอน
                          color: Colors.orange, // สีไอคอน
                        ),
                        Icon(
                          Icons.star, // รูปไอคอน
                          size: 18.0, // ขนาดไอคอน
                          color: Colors.orange, // สีไอคอน
                        ),
                        Icon(
                          Icons.star, // รูปไอคอน
                          size: 18.0, // ขนาดไอคอน
                          color: Colors.orange, // สีไอคอน
                        ),
                        Icon(
                          Icons.star_border_outlined, // รูปไอคอน
                          size: 18.0, // ขนาดไอคอน
                          color: Colors.orange, // สีไอคอน
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Text(
              '${Random().nextInt(100)}',
              style: TextStyle(
                fontSize: 150.0,
                color: Colors.purple.shade300,
                fontWeight: FontWeight.w900,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 100, right: 100, top: 5.0, bottom: 5.0),
                child: Text(
                  'RANDOM',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}