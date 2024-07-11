import 'package:flutter/material.dart';
import 'package:ui_4_watch_store/model/nav_bar_model.dart';
import 'package:ui_4_watch_store/model/product_model.dart';

import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// Selected Index
  int selectedIndex = 0;
  /// List Of Categories
  List<String>categories=["All","Sport Watch","Smart Watch","Dress Watch","Casual Watch"];

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      ///// ****** App Bar ******* ///////
      appBar: AppBar(
        centerTitle: false,
        leading: const CircleAvatar(
          backgroundImage: AssetImage("assets/profile.jpeg"),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back!",
              style: textTheme.bodySmall,
            ),
            Text(
              "Dev_73arner",
              style: textTheme.titleLarge,
            )
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColorLight,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Icon(
                  Icons.notifications,
                  color: Theme.of(context).primaryColor,
                ),
                Badge(
                  backgroundColor: Theme.of(context).indicatorColor,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///// ***** Search Bar **** ////////
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).primaryColorLight),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    border: InputBorder.none),
              ),
            ),
            ///// ***** Banner Section **** ////////
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage("assets/banner.jpg"),
                      fit: BoxFit.cover),
                  color: Theme.of(context).primaryColorLight),
            ),
            ///// ***** Indicator Section **** ////////
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 5; i++) ...[
                  Container(
                    width: 20,
                    height: 5,
                    margin:const  EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        color:i==0? Theme.of(context).indicatorColor:Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                  )
                ]
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ///// ***** Categories Section **** ////////
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(int i=0;i<categories.length;i++)...[
                    Container(
                      margin:const EdgeInsets.only(right: 10),
                      padding:const  EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedIndex == i
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).primaryColorLight,

                      ),
                      child: Text(categories[i],style: TextStyle(  color: selectedIndex == i
                          ? Theme.of(context).indicatorColor
                              : Theme.of(context).primaryColor ,),),
                    )
                  ]
                ],
              ),
            ),
            ///// ***** Product  Section **** ////////
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("New Arrival",style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),),
                const Text("See all" ,),
              ],
            ),
            const SizedBox(height: 15,),
            GridView.count(
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
               childAspectRatio: 0.9,
              children: <Widget>[

               for(int i=0;i<productList.length;i++)...[
                 GestureDetector(
                   onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsScreen(product: productList[i],)));
                   },
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Expanded(
                         child: Stack(
                           children: [
                             Container(
                               padding:const EdgeInsets.all(5),
                               width: double.infinity,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: Theme.of(context).primaryColorLight,
                               ),
                               child: Hero(
                                 tag:productList[i].image,
                                 child: Transform.rotate(
                                     angle: -0.6,
                                     child: Image.asset(productList[i].image)),
                               ),
                             ),
                             Positioned(
                               top: 5,
                                 right: 5,
                                 child: CircleAvatar(
                                   backgroundColor: Theme.of(context).primaryColor,
                                   child: Icon(Icons.bookmark,color:productList[i].isFav? Theme.of(context).indicatorColor:Colors.white),
                                 )),
                           ],
                         ),
                       ),
                       Text(productList[i].title,style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                       Text(productList[i].subTitle,style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).primaryColorDark),),
                       Row(
                         children: [
                         Expanded(child: LinearProgressIndicator(
                           minHeight: 4,
                           backgroundColor: Theme.of(context).primaryColor,
                           value:productList[i].salesPercent,
                           color: Theme.of(context).indicatorColor,
                           borderRadius: BorderRadius.circular(10),
                         )),

                           Container(
                             margin:const EdgeInsets.only(left: 5),

                             decoration: BoxDecoration(
                               color: Theme.of(context).primaryColor,
                               borderRadius: BorderRadius.circular(30)
                             ),
                             padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5 ),

                             child: Text("\$${productList[i].price}",style: TextStyle(color: Theme.of(context).indicatorColor),),
                           )
                         ],
                       )
                     ],
                   ),
                 ),
               ]
              ],
            ),
            const SizedBox(height: 50,)


          ],
        ),
      ),
      ///// ****** Bottom NavBar ******* ///////
      bottomNavigationBar: Container(
        height: 90,
        color: Theme.of(context).scaffoldBackgroundColor,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = 0; i < navBarData.length; i++) ...[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = i;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(navBarData[i].icon,
                          color: selectedIndex == i
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).primaryColorDark),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        navBarData[i].title,
                        style: TextStyle(
                            color: selectedIndex == i
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).primaryColorDark),
                      )
                    ],
                  ),
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
