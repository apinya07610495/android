
import 'package:flutter/material.dart';

class Game20Defeated extends StatefulWidget {
  const Game20Defeated({Key? key}) : super(key: key);

  @override
  _Game20DefeatedState createState() => _Game20DefeatedState();
}

class _Game20DefeatedState extends State<Game20Defeated> {
  var press = 0; // false
  bool success = false;//ครบ20ยัง
  bool defeated = false;//ไว้โชว์ว่าบลูวินหรือเรดวิน
  var count = 0;

  _setNewGame() {
    setState(() {
      count = 0;
      success = false;
      press = 0;
      defeated = false;
    });
  }

  _handleClickButton(int number) {
    setState(() {
      if (count + number < 20) {
        count = count + number;
        if (defeated == false) {
          press = 1; // true
          defeated = true;
        } else {
          press = 0; // false
          defeated = false;
        }
      } else {
        count = 20;
        press = 2; // null
        success = true;
      }
    });
  }

  Widget _buttonNumberBlue(int number) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: press==0 ?() => _handleClickButton(number) : null,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 6),
          primary: Colors.blue.shade400 ,
        ),
        child: Text(
          '$number',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }

  Widget _buttonNumberRed(int number) {

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed:  press == 1 ?() => _handleClickButton(number) : null   ,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 6),
          primary: Colors.red.shade400,
        ),
        child: Text(
          '$number',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: const BoxDecoration(
              image: const DecorationImage(
                image: const AssetImage("assets/images/elf.jpg"),
                fit: BoxFit
                    .fill, // ยืดเต็มพื้นที่โดยไม่สนใจสัดส่วนของภาพ หรือใช้ BoxFit.cover เพื่อยืดให้เต็มและคงสัดส่วนของภาพไว้ แต่บางส่วนของภาพอาจถูก crop
              ),
            ),
            child: SafeArea(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //children: [3,2,1].map((e) => _buttonNumberRed(e)).toList(),
                      children:[
                        _buttonNumberRed(3),
                        _buttonNumberRed(2),
                        _buttonNumberRed(1),
                      ],
                      /*children: [
                        for(int i=3;i>=1;i--)
                          _buttonNumberRed(i)
                      ],*/
                    ),
                    success
                        ? Column(
                      children: [
                        Text(
                          defeated ?  'BLUE\nWIN' : 'RED\nWIN' ,
                          style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        OutlinedButton(
                          onPressed: _setNewGame,
                          child: Text(
                            'NEW GAME',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        )
                      ],
                    )
                        : Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                for (var item = 0; item < count; item++)
                                  Icon(Icons.star, size: 28.0, color: Colors.deepPurpleAccent,),
                                for (var item = 0; item < 20 - count; item++)
                                  Icon(Icons.star_border_outlined, size: 28.0, color: Colors.deepPurpleAccent,)
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                press == 0
                                    ? Icon(Icons.keyboard_arrow_up, size: 100.0, color: Colors.grey,)
                                    : Icon(Icons.keyboard_arrow_up, size: 100.0, color: Colors.black,),
                                Text(
                                  count.toString(),
                                  style: TextStyle(fontSize: 120.0),
                                ),
                                press == 0
                                    ? Icon(Icons.keyboard_arrow_down, size: 100.0, color: Colors.black,)
                                    : Icon(Icons.keyboard_arrow_down, size: 100.0, color: Colors.grey,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buttonNumberBlue(1),
                        _buttonNumberBlue(2),
                        _buttonNumberBlue(3),
                      ],
                      /*children: [
                        for(int i=1;i<=3;i++)
                          _buttonNumberBlue(i)
                      ],*/
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}