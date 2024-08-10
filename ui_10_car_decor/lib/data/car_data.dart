
import 'package:flutter/material.dart';

class Car{
 final  String name;
 final String image;
 final String slogan;
 final Color color;
 Car({required this.image,required this.name,required this.color,required this.slogan});
}

List<Car>carList=[
  Car(image: "assets/car1.png", name: "Honda NSX", color:const  Color(0xff17212a), slogan: "The new hybrid super car"),
  Car(image: "assets/car2.png", name: "Ferrari 488", color:  Colors.red, slogan: "Ferrari is the top model lineup"),
  Car(image: "assets/car3.png", name: "Mercedes SL", color:const  Color(0xffcbd6e0), slogan: "Timeless design"),

];