import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List<int> list = [1, 2, 3];
  bool showNumber = true;

  _handleClickButton() {
    setState(() {
      list.add(list.length + 1);
    });
  }

  _handleClickButton2() {
    setState(() {
      showNumber = !showNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:  Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: list
                          .map(
                            (e) => Text(
                              e.toString(),
                              style: TextStyle(fontSize: 30.0),
                            ),
                          )
                          .toList(),
                    )

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: _handleClickButton, child: Text('Test')),
                TextButton(onPressed: _handleClickButton2, child: Text('Test2'))
              ],
            ),
            Image(

              image: AssetImage(showNumber? 'assets/images/1081541.png' : 'assets/images/1084549.png',
              ),
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
