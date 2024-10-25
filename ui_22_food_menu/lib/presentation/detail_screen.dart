import 'package:flutter/material.dart';
import 'package:ui_22_food_menu/data/food_data.dart';

class DetailScreen extends StatefulWidget {
  final Item data;
  final String tag;
  const DetailScreen({super.key, required this.data, required this.tag});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  //// **** Bool Value to Handle Cart Bar ****///
  bool showCart = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //// **** Using Stack for Cart Bar **** ////
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  //// **** Back Button **** ////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                      //// **** Show Cart Button **** ////
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showCart = true;
                          });
                        },
                        child: Container(
                          height: 35,
                          width: 35,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26.withOpacity(0.15),
                                    offset: const Offset(1, 5),
                                    blurRadius: 5),
                                const BoxShadow(
                                    color: Colors.white70,
                                    offset: Offset(-1, -5),
                                    blurRadius: 5)
                              ]),
                          child: const Icon(Icons.shopping_cart),
                        ),
                      ),
                    ],
                  ),
                  //// **** Food Item Image **** ////
                  Center(
                    child: Hero(
                      tag: widget.tag,
                      child: CircleAvatar(
                        radius: 150,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(widget.data.image),
                      ),
                    ),
                  ),
                  const Spacer(),
                  //// **** Title **** ////
                  Text(
                    widget.data.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 38),
                  ),
                  const Spacer(),
                  //// **** Rating **** ////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int s = 0; s < 5; s++) ...[
                        const Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 20,
                        ),
                      ]
                    ],
                  ),
                  const Spacer(),
                  //// **** Description **** ////
                  Text(
                    widget.data.description,
                    style: const TextStyle(fontSize: 15),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //// **** Price **** ////
                      Text(
                        "Price:  \$${widget.data.price}",
                        style: const TextStyle(fontSize: 20),
                      ),
                      //// **** Add to Cart Button **** ////
                      Container(
                        height: 45,
                        width: 140,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26.withOpacity(0.15),
                                  offset: const Offset(1, 5),
                                  blurRadius: 5),
                              const BoxShadow(
                                  color: Colors.white70,
                                  offset: Offset(-1, -5),
                                  blurRadius: 5)
                            ]),
                        alignment: Alignment.center,
                        child: const Text(
                          "Add",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Spacer(),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOutBack,
              right: showCart ? 0 : -150,
              child: Container(
                width: 100,
                height: MediaQuery.sizeOf(context).height,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showCart = false;
                            });
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            margin: const EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26.withOpacity(0.15),
                                      offset: const Offset(1, 5),
                                      blurRadius: 5),
                                  const BoxShadow(
                                      color: Colors.white70,
                                      offset: Offset(-1, -5),
                                      blurRadius: 5)
                                ]),
                            child: const Icon(Icons.close),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Your\nOrder",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                            child: ListView.builder(
                                itemCount: items.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Image.asset(items[index].image);
                                })),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          "Total:",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "${items.length} items",
                          style: const TextStyle(fontSize: 12),
                        ),
                        const Text(
                          "\$250.0",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
