import 'package:flutter/material.dart';
import 'package:ui_6_newsletter_app/data/popular_topics_model.dart';
import 'package:ui_6_newsletter_app/presentation/posts_screen.dart';

import '../data/post_model.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = ["Popular", "Recommended", "New Topic", "Latest"];
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Theme.of(context).primaryColorDark,
              Theme.of(context).primaryColorLight,
            ]),
          ),
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              ///// ***** AppBar ****** /////////
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                foregroundColor: Theme.of(context).primaryColor,
                leading: const Icon(Icons.menu),
                actions:  [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ProfileScreen()));
                    },
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/profile.jpeg"),
                    ),
                  ),
                const   SizedBox(
                    width: 15,
                  ),
                ],
              ),
              ///// ***** Body ****** /////////
              body: Column(
                children: [
                  ///// ***** Heading ****** /////////
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hi, Dev_73arner",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                              ),
                              Text("Find topics that you like to read",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        color: Colors.white,
                                      )),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.search,
                          size: 30,
                          color: Theme.of(context).primaryColor,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(30))),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                for (int i = 0; i < categories.length; i++) ...[
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedCategory = i;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: Chip(
                                          backgroundColor: selectedCategory == i
                                              ? const Color(0xffcce8f9)
                                              : const Color(0xffe7ebf6),
                                          side: const BorderSide(
                                              color: Colors.transparent),
                                          label: Text(
                                            categories[i],
                                            style: TextStyle(
                                                color: selectedCategory == i
                                                    ? Theme.of(context)
                                                        .primaryColorLight
                                                    : Colors.grey.shade700),
                                          )),
                                    ),
                                  )
                                ]
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Popular Topics",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                for (int i = 0; i < topicsList.length; i++) ...[
                                  Stack(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 20, bottom: 20),
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            gradient: LinearGradient(
                                                colors: topicsList[i].color),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey.shade300,
                                                  blurRadius: 10,
                                                  offset: const Offset(10, 10))
                                            ]),
                                        padding: const EdgeInsets.all(30),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              topicsList[i].title,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall
                                                  ?.copyWith(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                            Text("${topicsList[i].post} Posts",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium
                                                    ?.copyWith(
                                                      color: Colors.white,
                                                    )),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          top: -10,
                                          left: -5,
                                          child: Container(
                                            height: 50,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.1),
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                          )),
                                      Positioned(
                                          bottom: 10,
                                          right: 0,
                                          child: Container(
                                            height: 60,
                                            width: 80,
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.1),
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                          ))
                                    ],
                                  )
                                ]
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const PostsScreen()));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Trending Post",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "See All",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            padding:const  EdgeInsets.all(15),
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
                              children: [
                                ListTile(
                               contentPadding:EdgeInsets.zero,
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.grey.shade300,
                                    child:const  Icon(Icons.person),
                                  ),
                                  title:
                                  Text(
                                      postList[1].title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Row(
                                    children: [
                                      Text(
                                        postList[1].userName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                     const  SizedBox(width: 10,),
                                     const  Badge(backgroundColor: Colors.cyan,),
                                      const  SizedBox(width: 10,),
                                      Text(
                                        "${postList[1].postTime} ago",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  trailing:const  Icon(Icons.bookmark_outline),
                                ),
                                Text(
                                  postList[1].content,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 10,),
                                Row(

                                  children: [
                                    Expanded(child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      const Icon(Icons.thumb_up_alt_outlined,color: Colors.grey,size: 20,),
                                     const  SizedBox(width: 5,),
                                      Text("${ postList[1].likes} Likes",style:const  TextStyle(fontSize: 13),)
                                    ],),),
                                    Expanded(child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      const Icon(Icons.chat_bubble_outline,color: Colors.grey,size: 20,),
                                      const  SizedBox(width: 5,),
                                      Text("${ postList[1].comments} replies",style:const  TextStyle(fontSize: 13),)
                                    ],),),
                                    Expanded(child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      const Icon(Icons.remove_red_eye_outlined,color: Colors.grey,size: 20,),
                                      const  SizedBox(width: 5,),
                                      Text("${ postList[1].views} views",style:const  TextStyle(fontSize: 13),)
                                    ],),),
                                  ],
                                )
                                
                              ],
                            ),
                          ),
                          const SizedBox(height: 40,)
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
        Positioned(
            right: -280,
            top: -290,
            child: IgnorePointer(
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    border: Border.all(
                        width: 30,
                        color: Theme.of(context).primaryColor.withOpacity(0.05))),
              ),
            ))
      ],
    );
  }
}
