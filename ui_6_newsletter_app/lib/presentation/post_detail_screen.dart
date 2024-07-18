import 'package:flutter/material.dart';
import 'package:ui_6_newsletter_app/animation/show_animation.dart';

import '../data/post_model.dart';

class PostDetailScreen extends StatelessWidget {
  final PostModel post;
  final int index;
  const PostDetailScreen({super.key, required this.post,required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     extendBody: true,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          "View Post",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.transparent,
        padding:const  EdgeInsets.all(15),
        child:Container(
          padding: const EdgeInsets.all(5),
          decoration:BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 10,
                )
              ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Row(
            children: [
             const  Icon(Icons.attach_file),
            const  SizedBox(width: 10,),
              Expanded(child: TextFormField(
                decoration:const  InputDecoration(
                  hintText: "Well,i think...",
                  border: InputBorder.none
                ),
              )),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Icon(Icons.send,color: Colors.white,size: 20,),
              )
            ],
          ),
        ) ,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      child: const Icon(Icons.person),
                    ),
                    title: Text(
                      post.userName,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "${post.postTime} ago",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.bookmark_outline),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Hero(
                    tag: "$index",
                    child: Text(
                      post.title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    post.content,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ShowUpAnimation(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 0; i < post.tags.length; i++) ...[
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Chip(
                                  backgroundColor:const Color(0xffe7ebf6),
                                  side: const BorderSide(color: Colors.transparent),
                                  label: Text(
                                    post.tags[i],
                                    style: TextStyle(
                                        color:
                                            Colors.grey.shade700),
                                  )),
                            )
                          ]
                        ],
                      ),
                    ),
                  ),
                 const  SizedBox(height:10,)
                ],
              ),
            ),
            const  SizedBox(height:20,),
           ShowUpAnimation(
             delay: 100,
             child:  Text(
             "Replies(${post.comments}) ",
             style: Theme.of(context)
                 .textTheme
                 .titleMedium
                 ?.copyWith(
                 color: Colors.black,
                 fontWeight: FontWeight.bold),
           ),),
            const  SizedBox(height:20,),
            Expanded(child: ShowUpAnimation(
              delay: 200,
              child: ListView.builder(
                itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                  return Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10,
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        child: const Icon(Icons.person),
                      ),
                      title: Text(
                        "George Embolo",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "3m ago",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),

                    ),

                    Text(
                      "Keep it Up nice and cool , can not wait for next Topic",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.thumb_up_alt_outlined,color: Colors.grey,size: 20,),
                        SizedBox(width: 5,),
                        Text("12 Likes",style:const  TextStyle(fontSize: 13),)
                      ],),

                  ],
                ),
              );}),
            )),


          ],
        ),
      ),
    );
  }
}
