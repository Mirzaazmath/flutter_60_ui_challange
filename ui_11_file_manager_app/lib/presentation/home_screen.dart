import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_11_file_manager_app/data/storage_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1a25),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: const Icon(
          Icons.folder_open,
          color: Color(0xfffe1679),
        ),
        title: const Text(
          "My Files",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(
            CupertinoIcons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.widgets,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.count(
              primary: false,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
              childAspectRatio: 1.3,
              children: <Widget>[
                for (int i = 0; i < frequentlyList.length; i++) ...[
                  Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.white.withOpacity(0.12)),
                          color: const Color(0xff21202e),
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            frequentlyList[i].icon,
                            color: frequentlyList[i].color,
                            size: 35,
                          ),
                          Text(
                            frequentlyList[i].name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            "${frequentlyList[i].count} Files",
                            style: const TextStyle(
                              color: Color(0xff797b89),
                            ),
                          )
                        ],
                      )),
                ]
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Frequently Used",
              style: TextStyle(
                  color: Color(0xff797b89),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.12)),
                  color: const Color(0xff21202e),
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(20),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: allList.length,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(
                        allList[index].icon,
                        size: 35,
                        color: allList[index].color,
                      ),
                      title: Text(
                        allList[index].name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      subtitle: Text(
                        "${allList[index].count} Files",
                        style: const TextStyle(
                          color: Color(0xff797b89),
                        ),
                      ),
                      trailing:const  Icon(Icons.more_horiz),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
