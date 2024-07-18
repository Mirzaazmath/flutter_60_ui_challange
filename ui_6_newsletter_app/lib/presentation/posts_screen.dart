import 'package:flutter/material.dart';
import 'package:ui_6_newsletter_app/data/post_model.dart';
import 'package:ui_6_newsletter_app/presentation/post_detail_screen.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColorLight.withOpacity(0.4),

      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColorLight,
        centerTitle: true,
        title: const Text("Posts"),
      ),
      body: ListWheelScrollView(
        itemExtent: 250,
        squeeze: 1.0,
        diameterRatio: 2.0,
        children: [
          for (int i = 0; i < postList.length; i++) ...[
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PostDetailScreen(post: postList[i], index: i,)));
              },
              child: Container(
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
                      title: Hero(
                        tag: "$i",
                        child: Text(
                          postList[i].title,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
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
                            "${postList[i].postTime} ago",
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
                      postList[i].content,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.thumb_up_alt_outlined,
                                color: Theme.of(context).primaryColorLight,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${postList[i].likes} Likes",
                                style: const TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chat_bubble_outline,
                                color: Theme.of(context).primaryColorLight,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${postList[i].comments} replies",
                                style: const TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.remove_red_eye_outlined,
                                color: Theme.of(context).primaryColorLight,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${postList[i].views} views",
                                style: const TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
