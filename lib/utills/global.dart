import 'dart:math';

import 'package:flutter/material.dart';

int i=1;
String image="assets/image/1.png";
String image2="assets/image/6.png";
int? min1, max1;
int randomNumberMinMax(int min, int max){
  int randomminmax = min + Random().nextInt(max - min);
  //generate random number within minimum and maximum value
  return randomminmax;
}
Color white=Colors.white;
Color grey=Colors.blueGrey;
bool color1=true;