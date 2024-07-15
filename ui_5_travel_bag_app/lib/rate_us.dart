import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
class Rate extends StatelessWidget {
  const Rate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.transparent,
        title:const  Text("Rate Us",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        leading: IconButton(icon: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset("assets/images/app_icon.png",),
        ),onPressed: (){
          ZoomDrawer.of(context)!.toggle();


        },),

      ),
    );
  }
}
