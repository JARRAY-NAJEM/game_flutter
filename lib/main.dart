import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,

    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('تطابق صورة'),
 
      ),
   

      body: ImagePage(),
    ),
  ));
}



class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 2;

  void changeImage() {
    leftImageNumber = Random().nextInt(8) + 1;
    rightImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber
              ? 'مبروك لقد نجحت'
              : 'حاول مرة أخرى',
          style: TextStyle(
            fontSize: 42.0,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                    });
                  },
                  child: Image.asset('assets/images/image-$leftImageNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                    });
                  },
                  child: Image.asset('assets/images/image-$rightImageNumber.png'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
