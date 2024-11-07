import 'package:flutter/material.dart';
import 'package:ui_26_file_manager/utils/app_colors.dart';

import '../widgets/chart_widget.dart';
import '../widgets/folder_tile.dart';
import '../widgets/global_border_container.dart';
import 'folder_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        title: const Text(
          "File Manager",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: GlobalBorderContainer(icon: Icons.developer_board_outlined, color: AppColors().yellowColor, title: 'Internal',subTitle: "256 GB",)),
                const SizedBox(width: 20,),
                Expanded(child: GlobalBorderContainer(icon: Icons.sd_card_outlined, color: AppColors().greenColor, title: 'External',subTitle: "64 GB",))
              ],
            ),
            const SizedBox(height: 20,),
           const  ChartWidget(),
            const SizedBox(height: 20,),
             Text(
              "My Favorites",
              style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().whiteColor,fontSize: 20),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height:120 ,
              child: Row(
                children: [
                  Expanded(child: GlobalBorderContainer(icon: Icons.image_outlined, color: AppColors().yellowColor, title: 'Images',subTitle: "1225 Items",isSmall: true,)),
                  const SizedBox(width: 20,),
                  Expanded(child: GlobalBorderContainer(icon: Icons.videocam_outlined, color: AppColors().greenColor, title: 'Video',subTitle: "120 Items",isSmall: true,)),
                  const SizedBox(width: 20,),
                  Expanded(child: GlobalBorderContainer(icon: Icons.music_note_outlined, color: AppColors().pinkColor, title: 'Music',subTitle: "230 Items",isSmall: true,)),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              "My Folders",
              style: TextStyle(fontWeight: FontWeight.bold,color: AppColors().whiteColor,fontSize: 20),
            ),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const FolderScreen()));
              },
                child: FolderTileWidget(icon: Icons.description_outlined, color: AppColors().pinkColor, title: 'Documents',subTitle: "230 Items")),
            const SizedBox(height: 10,),
            FolderTileWidget(icon: Icons.snippet_folder_outlined, color: AppColors().greenColor, title: 'Projects',subTitle: "20 Items"),
            const SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
