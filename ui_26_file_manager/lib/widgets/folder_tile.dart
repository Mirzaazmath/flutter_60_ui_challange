import 'package:flutter/material.dart';

class FolderTileWidget extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String subTitle;

  const FolderTileWidget(
      {super.key,
        required this.color,
        required this.icon,
        required this.title,
        required this.subTitle,
        });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      padding: const EdgeInsets.all(0.7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [color, color, Colors.transparent])),
      child: Container(

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).primaryColor),
        alignment: Alignment.center,
        child: ListTile(
          leading: Icon(icon,size: 40,color: color,),
          title: Text(title,style:const  TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          subtitle:  Text(subTitle,style:const  TextStyle(color: Colors.grey),),
          trailing:const  Icon(Icons.more_vert,color: Colors.white,),
        )
      ),
    );
  }
}
