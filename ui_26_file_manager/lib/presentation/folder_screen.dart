import 'package:flutter/material.dart';
import 'package:ui_26_file_manager/data/folder_data.dart';

import '../utils/app_colors.dart';
import '../widgets/global_border_container.dart';
class FolderScreen extends StatelessWidget {
  const FolderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,

        title: const Text(
          "Documents",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.more_vert),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              margin:const  EdgeInsets.only(bottom: 20),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white54)
              ),
              padding:const  EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child:const  Row(
                children: [
                  Icon(Icons.search_rounded,color: Colors.white54,),
                  SizedBox(width: 20,),
                  Text("Search Documents",style: TextStyle(color: Colors.white54),)
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                children: <Widget>[
                  for(int i=0;i<folderList.length;i++)...[
                    GlobalBorderContainer(icon: folderList[i].icon, color: folderList[i].color, title: folderList[i].title,subTitle: folderList[i].subTitle,),
                  ]
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
