import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_19_nft_app/data/home_data.dart';
import 'package:ui_19_nft_app/presentation/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: const Icon(Icons.sort),
        title: const Text(
          "NFT",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(CupertinoIcons.search),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Ad Banner
            Container(
              height: 180,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/daimond.jpg"), fit: BoxFit.fill),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 10),
                      color: Colors.grey,
                      blurRadius: 20,
                    )
                  ]),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How to Collect & Sell Digital Artwork ? ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Author",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Nathan Bray",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 27,
                        child: Icon(
                          Icons.play_arrow,
                          size: 40,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            /// Popular Bids
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Bids",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            /// Popular Bids List
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < nftList.length; i++) ...[
                    Padding(
                      padding:  const EdgeInsets.only(right: 20, left: 20,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailScreen(data: nftList[i],)));
                            },
                            child: Hero(
                              tag: nftList[i].title,
                              child: Container(
                                height: 180,
                                padding: const EdgeInsets.all(15),
                                margin: const EdgeInsets.only(bottom: 15),
                                width: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image:  DecorationImage(
                                        image: AssetImage(nftList[i].image),
                                        fit: BoxFit.fill),
                                    boxShadow: const  [
                                      BoxShadow(
                                        offset: Offset(0, 10),
                                        color: Colors.black26,
                                        blurRadius: 10,
                                      )
                                    ]),
                                alignment: Alignment.topRight,

                              ),
                            ),
                          ),
                          Text(nftList[i].title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
                         const  SizedBox(height: 10,),
                          Row(
        
                            children: [
                              const CircleAvatar(
                                child: Icon(Icons.person),
                              ),
                              const SizedBox(width: 10,),
                              Text(nftList[i].author,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
                              const SizedBox(width: 50,),
        
                              Container(
                                padding:const  EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.shade200
                                ),
                                child: Text("${nftList[i].price} ETH",style:  TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),
                              ),
        
        
                            ],
                          )
                        ],
                      ),
                    ),
                  ]
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            /// Top Creators
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Creators",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            /// Profile Card
            Container(
              height: 90,
              margin:const  EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Theme.of(context).primaryColor
              ),
              padding:const  EdgeInsets.symmetric(vertical: 15,horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const   CircleAvatar(
                    backgroundImage: AssetImage("assets/profile.jpeg"),
                    radius: 30,
                  ),

                 const  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dev_73arner",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("2.6K Followers",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)
                    ],
                  ),
                  Container(
                    padding:const  EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("Follow",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),
                  )


                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
