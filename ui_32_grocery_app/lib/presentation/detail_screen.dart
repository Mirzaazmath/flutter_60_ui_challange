import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_32_grocery_app/model/fruit_model.dart';
import 'package:ui_32_grocery_app/provider/show_detail_provider.dart';
import 'package:ui_32_grocery_app/utils/showup_animation.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ShowDetailProvider>(
      builder: (BuildContext context, provider, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton.outlined(
              onPressed: () {
                context.read<ShowDetailProvider>().showDetailOfIndex(-1, false);
              },
              icon: const Icon(Icons.arrow_back)),
          ShowUpAnimation2(
            delay: 200,
            child: Center(
              child: SizedBox(
                height: 200,
                child: Image.asset(fruitList[provider.selectedIndex].image),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ShowUpAnimation2(
            delay: 250,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fresh ${fruitList[provider.selectedIndex].name}",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).scaffoldBackgroundColor),
                      ),
                      Text(
                        "Available In Stocks",
                        style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(context).scaffoldBackgroundColor),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      child: Icon(
                        Icons.remove,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      child: Icon(
                        Icons.add,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ShowUpAnimation2(
              delay: 300,
              child: Text(
                "Product Description",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).scaffoldBackgroundColor),
              )),
          ShowUpAnimation2(
            delay: 350,
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).scaffoldBackgroundColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ShowUpAnimation2(
              delay: 400,
              child: Text(
                "Product Reviews",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).scaffoldBackgroundColor),
              )),
          const SizedBox(
            height: 10,
          ),
          ShowUpAnimation2(
            delay: 450,
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/profile.jpeg"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dev_73arner",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).scaffoldBackgroundColor),
                      ),
                      SizedBox(
                        width: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (int i = 0; i < 5; i++) ...[
                              Icon(
                                Icons.star,
                                color: Theme.of(context).primaryColorDark,
                                size: 13,
                              )
                            ]
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "08 Feb 2025",
                  style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).scaffoldBackgroundColor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ShowUpAnimation2(
            delay: 500,
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).scaffoldBackgroundColor),
            ),
          ),
        ],
      ),
    );
  }
}
