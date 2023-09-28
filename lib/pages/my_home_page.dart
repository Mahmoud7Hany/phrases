import 'package:flutter/material.dart';

import '../Constants/const_list_data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int myIndex = 0;

  // changeIndex(String direction) {
  //   if (direction == "right") {
  //     setState(() {
  //       if (myIndex == data.length - 1) {
  //         myIndex = 0;
  //       } else {
  //         myIndex++;
  //       }
  //     });
  //   } else if (direction == "left") {
  //     setState(() {
  //       if (myIndex == 0) {
  //         myIndex = data.length - 1;
  //       } else {
  //         myIndex--;
  //       }
  //     });
  //   }
  // }

//  طريقه اخري
  changeIndex(String direction) {
    switch (direction) {
      case "right":
        setState(() {
          if (myIndex == data.length - 1) {
            myIndex = 0;
          } else {
            myIndex++;
          }
        });
        break;

      case "left":
        setState(() {
          if (myIndex == 0) {
            myIndex = data.length - 1;
          } else {
            myIndex--;
          }
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Text(
                data[myIndex]['line1'],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Text(
                data[myIndex]['line2'],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    changeIndex('left');
                  },
                  backgroundColor: Colors.orange,
                  child: const Icon(
                    Icons.arrow_left,
                    size: 50,
                  ),
                ),
                const SizedBox(width: 40),
                FloatingActionButton(
                  onPressed: () {
                    changeIndex('right');
                  },
                  backgroundColor: Colors.orange,
                  child: const Icon(
                    Icons.arrow_right,
                    size: 50,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
