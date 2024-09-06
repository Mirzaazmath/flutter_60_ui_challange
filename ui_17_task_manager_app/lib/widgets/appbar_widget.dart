import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      centerTitle: false,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      title: Column(
        children: [
          const Text("Hey Dev_73arner",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          Text("You have 5 task today",style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey),)
        ],
      ),
      actions: [
        IconButton(onPressed: (){}, icon:const Icon(Icons.notifications_none,color: Colors.white,)),
        const   SizedBox(width: 10,),
      ],

    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
