import 'package:flutter/material.dart';

import '../../utills/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String value1 = "6";
  int if1 = 7;
  bool value6 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: const Text(
            "Dice App",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Select The Dice Type:",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
              RadioMenuButton(
                  value: "6",
                  groupValue: value1,
                  onChanged: (value) {
                    setState(() {
                      value1 = value!;
                      color1 = !color1;
                      if (value1 == "6") {
                        value6 = true;
                        if1 = 7;
                        i = 1;
                        if (i == 1) {
                          image = "assets/image/1.png";
                        }
                      }
                    });
                  },
                  child: Text(
                    "1 Dice",
                    style: TextStyle(color: white),
                  )),
              RadioMenuButton(
                  value: "12",
                  groupValue: value1,
                  onChanged: (value) {
                    setState(() {
                      value1 = value!;
                      color1 = !color1;
                      if (value1 == "12") {
                        value6 = false;
                        if1 = 13;
                        i = 7;
                        if (i == 7) {
                          image = "assets/image/6.png";
                          image2 = "assets/image/1.png";
                        }
                      }
                    });
                  },
                  child: Text(
                    "2 Dice",
                    style: TextStyle(color: white),
                  )),
              Center(
                child: value6
                    ? Image.asset(image,
                        fit: BoxFit.fill, height: 125, width: 125)
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            image,
                            fit: BoxFit.fill,
                            height: 125,
                            width: 125,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            image2,
                            fit: BoxFit.fill,
                            height: 125,
                            width: 125,
                          ),
                        ],
                      ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "$i",
                style: const TextStyle(fontSize: 28, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      i!=12?
                      color1=!color1
                      :color1=true;
                      if1 == 7
                          ? i = randomNumberMinMax(1, 7)
                          : i = randomNumberMinMax(7, 13);
                      if (i == 1) {
                        image = "assets/image/1.png";
                      }
                      if (i == 2) {
                        image = "assets/image/2.png";
                      }
                      if (i == 3) {
                        image = "assets/image/3.png";
                      }
                      if (i == 4) {
                        image = "assets/image/4.png";
                      }
                      if (i == 5) {
                        image = "assets/image/5.png";
                      }
                      if (i == 6) {
                        image = "assets/image/6.png";
                      }
                      if (i == 7 && color1) {
                        image = "assets/image/3.png";
                        image2 = "assets/image/4.png";
                      }
                      if (i == 7 && color1 == false) {
                        image = "assets/image/5.png";
                        image2 = "assets/image/2.png";
                      }
                      if (i == 8 && color1) {
                        image = "assets/image/4.png";
                        image2 = "assets/image/4.png";
                      }
                      if (i == 8 && color1 == false) {
                        image = "assets/image/6.png";
                        image2 = "assets/image/2.png";
                      }
                      if (i == 9 && color1) {
                        image = "assets/image/3.png";
                        image2 = "assets/image/6.png";
                      }
                      if (i == 9 && color1 == false) {
                        image = "assets/image/5.png";
                        image2 = "assets/image/4.png";
                      }
                      if (i == 10 && color1) {
                        image = "assets/image/6.png";
                        image2 = "assets/image/4.png";
                      }
                      if (i == 10 && color1 == false) {
                        image = "assets/image/5.png";
                        image2 = "assets/image/5.png";
                      }
                      if (i == 11 && color1 == false) {
                        image = "assets/image/6.png";
                        image2 = "assets/image/5.png";
                      }
                      if (i == 11) {
                        image = "assets/image/6.png";
                        image2 = "assets/image/5.png";
                      }
                      if (i == 12) {
                        image = "assets/image/6.png";
                        image2 = "assets/image/6.png";
                      }

                    });
                  },
                  child: const Text(
                    "Roll",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
