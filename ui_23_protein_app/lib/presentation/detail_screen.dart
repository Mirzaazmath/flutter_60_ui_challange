import 'package:flutter/material.dart';
import 'package:ui_23_protein_app/utils/animation_utils.dart';

import '../data/protrein_data.dart';

class DetailScreen extends StatelessWidget {
  final Item data;
  final int index;
  const DetailScreen({super.key, required this.data, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xffb5333d),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              color: const Color(0xffb5333d),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ShowUpAnimation(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "PROTEIN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              items[index].title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            Text(
                              items[index].gram,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              items[index].gramString,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: ShowUpAnimation(
                    delay: 200,
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  items[index].sortDescription,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                height: 50,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(30)),
                                    color: Colors.black),
                                child: const Row(
                                  children: [
                                    Text(
                                      "Add to Cart",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            items[index].description,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ))
                ],
              )),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.4,
            child: Hero(tag: "$index", child: Image.asset(data.image)),
          )
        ],
      ),
    );
  }
}
