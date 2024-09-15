import 'package:flutter/material.dart';

import '../data/home_data.dart';

class DetailScreen extends StatelessWidget {
  final Nft data;
  const DetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "ArtWork Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.more_vert),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: data.title,
              child: Container(
                height: 300,
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(bottom: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(data.image), fit: BoxFit.fill),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 10),
                        color: Colors.black26,
                        blurRadius: 10,
                      )
                    ]),
                alignment: Alignment.topRight,

              ),
            ),
           const  SizedBox(height: 20,),
            Text(data.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
            Text(data.author,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
            const  SizedBox(height: 20,),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.grey.shade600),),
            const  SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Last Bid",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
                 const  SizedBox(height: 10,),
                  Container(
                    padding:const  EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200
                    ),
                    child: Text("${data.price} ETH",style:  TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ending In:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
                  const  SizedBox(height: 10,),
                  Container(
                    padding:const  EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200
                    ),
                    child: Text("${data.time} ETH",style:  TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),

            ],
          ),
          const   Spacer(),
            /// Profile Card
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).primaryColor
              ),
              alignment: Alignment.center,
              padding:const  EdgeInsets.symmetric(vertical: 15,horizontal: 25),
              child:  const  Text("Place a bid",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

            ),
            const  SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
