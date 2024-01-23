

import 'package:flutter/material.dart';

import '../../utills/global.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text("Dice App",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height:250,
                width:250,
                decoration: BoxDecoration(shape: BoxShape.rectangle),
                child: Image.asset(image,fit: BoxFit.fill,)),
            const SizedBox(height: 20,),
            Text("$i",style: const TextStyle(fontSize: 28,color: Colors.white),),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
setState(() {
    i=i1.nextInt(13);
    if(i==1)
    {
      image="assets/image/1.png";
    }
    if(i==2)
    {
      image="assets/image/2.png";
    }
    if(i==3)
    {
      image="assets/image/3.png";
    }
    if(i==4)
    {
      image="assets/image/4.png";
    }
    if(i==5)
    {
      image="assets/image/5.png";
    }
    if(i==6)
    {
      image="assets/image/6.png";
    }
    if(i==7)
    {
      image="assets/image/7.jpg";
    }
    if(i==8)
    {
      image="assets/image/8.jpg";
    }
    if(i==9)
    {
      image="assets/image/9.jpg";
    }
    if(i==10)
    {
      image="assets/image/10.jpg";
    }
    if(i==11)
    {
      image="assets/image/11.jpg";
    }
    if(i==12)
    {
      image="assets/image/12.jpg";
    }
    if(i==0) {
      image = "assets/image/0.jpg";
    }

});
            }, child: const Text("Roll",style: TextStyle(color: Colors.black),))
          ],
        ),
      ),
    )
    );
  }
}
