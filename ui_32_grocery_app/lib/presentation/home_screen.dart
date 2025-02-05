import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_32_grocery_app/model/fruit_model.dart';
import 'package:ui_32_grocery_app/presentation/detail_screen.dart';
import 'package:ui_32_grocery_app/provider/show_detail_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ShowDetailProvider>(
      builder: (BuildContext context, provider, child) => provider.isEnableShow
          ? const DetailScreen()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Daily\nGrocery Food',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).scaffoldBackgroundColor),
                    )),
                    const Icon(
                      CupertinoIcons.search,
                      size: 30,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    for (int i = 0; i < categoryList.length; i++) ...[
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Chip(
                          backgroundColor: selectedCategory == categoryList[i]
                              ? Theme.of(context).scaffoldBackgroundColor
                              : Theme.of(context).primaryColorLight,
                          side: const BorderSide(color: Colors.transparent),
                          label: Text(
                            categoryList[i],
                            style: TextStyle(
                                color: selectedCategory == categoryList[i]
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context).scaffoldBackgroundColor,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      )
                    ]
                  ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Fruits",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).scaffoldBackgroundColor),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).scaffoldBackgroundColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 10, // gap between adjacent chips
                    runSpacing: 10, // gap between lines
                    children: <Widget>[
                      for (int i = 0; i < fruitList.length; i++) ...[
                        GestureDetector(
                          onTap: () {
                            context
                                .read<ShowDetailProvider>()
                                .showDetailOfIndex(i, true);
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width / 2 - 30,
                            height: 210,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColorLight,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: SizedBox(
                                    height: 100,
                                    child: Image.asset(
                                      fruitList[i].image,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  fruitList[i].name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor),
                                ),
                                Text(
                                  "${fruitList[i].cal} Cal",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade600),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$${fruitList[i].price}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Theme.of(context)
                                              .primaryColorDark),
                                    ),
                                    Expanded(
                                        child: Text(
                                      "/kg",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade600),
                                    )),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .primaryColorDark,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ]
                    ],
                  ),
                ))
              ],
            ),
    );
  }
}

String selectedCategory = categoryList[0];
List<String> categoryList = [
  "Fruits",
  "Vegetables",
  "Fast Food",
  "Frozen Food",
  "Bakery"
];
