import 'package:flutter/material.dart';

import '../data/post_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              ),
              ///// ***** Body ****** /////////
              body: Column(

                children: [
                  ///// ***** Heading ****** /////////
                  Padding(
                    padding:const  EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/profile.jpeg"),
                          radius: 45,
                        ),
                        const  SizedBox(height: 10,),
                        Text(
                          "Hi, Dev_73arner",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),

                        Text("India",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Colors.white,
                                    )),
                      const   Divider(),
                        Text("Well hello people. I am a flutter enthusiast",
                            style:
                            Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                            )),
                       const  SizedBox(height: 10,),
                        Container(
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration:const  BoxDecoration(
                                    border:Border(right: BorderSide(color: Colors.white54))
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "24",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Posts",
                                          style:
                                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                            color: Colors.white,
                                          )),

                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration:const  BoxDecoration(
                                      border:Border(right: BorderSide(color: Colors.white54))
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "125",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Post Replies",
                                          style:
                                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                            color: Colors.white,
                                          )),

                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "244",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Votes",
                                        style:
                                        Theme.of(context).textTheme.bodySmall?.copyWith(
                                          color: Colors.white,
                                        )),

                                  ],
                                ),
                              )
                            ],
                          ),
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



                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Recent Post",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
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
                              children: [
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.grey.shade300,
                                    child: const Icon(Icons.person),
                                  ),
                                  title: Text(
                                    postList[0].title,
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
                                        postList[0].userName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Badge(
                                        backgroundColor: Colors.cyan,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "${postList[0].postTime} ago",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  trailing: const Icon(Icons.bookmark_outline),
                                ),
                                Text(
                                  postList[0].content,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.thumb_up_alt_outlined,
                                            color: Colors.grey,
                                            size: 20,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "${postList[0].likes} Likes",
                                            style:
                                                const TextStyle(fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.chat_bubble_outline,
                                            color: Colors.grey,
                                            size: 20,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "${postList[0].comments} replies",
                                            style:
                                                const TextStyle(fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.remove_red_eye_outlined,
                                            color: Colors.grey,
                                            size: 20,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "${postList[0].views} views",
                                            style:
                                                const TextStyle(fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          )
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
            right: -200,
            top: -200,
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  border: Border.all(
                      width: 30,
                      color:
                          Theme.of(context).primaryColor.withOpacity(0.05))),
            )),
        Positioned(
            right: -270,
            top: -270,
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                 color:
                Theme.of(context).primaryColor.withOpacity(0.05)
                  ),
            ))
      ],
    );
  }
}
