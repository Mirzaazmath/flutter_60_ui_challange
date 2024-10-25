import 'package:flutter/material.dart';
import 'package:ui_22_food_menu/data/food_data.dart';

import '../presentation/detail_screen.dart';

class MenuItemCard extends StatelessWidget {
  final Item data;
  final int index;
  const MenuItemCard({super.key, required this.data, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                      data: data,
                      tag: "$index",
                    )));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //// **** TiTle ****////
                  Text(
                    data.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  //// **** Price ****////
                  Text(
                    "\$${data.price}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  //// **** Rating ****////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int s = 0; s < 5; s++) ...[
                        const Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 15,
                        )
                      ]
                    ],
                  ),
                  //// **** Add to Cart ****////
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26.withOpacity(0.1),
                              offset: const Offset(4, 4),
                              blurRadius: 5),
                          const BoxShadow(
                              color: Colors.white70,
                              offset: Offset(-4, -4),
                              blurRadius: 5)
                        ]),
                    child: Text(
                      "Add To Cart",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            //// **** Food Item Image ****////
            Positioned(
                top: -50,
                right: -50,
                child: CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.transparent,
                  child: Hero(
                    tag: "$index",
                    child: Image.asset(
                      data.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // backgroundImage: AssetImage(items[i].image,),
                )),
            //// **** Like Button ****////
            Positioned(
                top: 0,
                left: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: data.isLiked
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : const Icon(
                          Icons.favorite_border,
                        ),
                ))
          ],
        ),
      ),
    );
  }
}
