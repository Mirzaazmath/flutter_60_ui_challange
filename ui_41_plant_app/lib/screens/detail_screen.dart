import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_41_plant_app/utils/animation_util.dart';
import 'package:ui_41_plant_app/model/data.dart';
import 'package:ui_41_plant_app/common/detail_clipper.dart';

class DetailScreen extends StatelessWidget {
  final Plant data;
  const DetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.shopping_cart_outlined), SizedBox(width: 10)],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Hero(tag: data.image, child: Image.asset(data.image)),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                ShowUpAnimation(
                  delay: 300,
                  child: ClipPath(
                    clipper: MyClipper(),
                    child: Container(color: Theme.of(context).primaryColor),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(
                          context,
                        ).primaryColor.withValues(alpha: 0.3),
                        blurRadius: 100,
                      ),
                    ],
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              data.title,
                              style: GoogleFonts.oswald().copyWith(
                                color: Colors.black,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              data.subtitle,
                              style: GoogleFonts.oswald().copyWith(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (int i = 0; i < data.rating; i++) ...[
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 18,
                                  ),
                                ],
                              ],
                            ),
                            Container(height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white),
                            ),
                              alignment: Alignment.center,
                              child: Text(
                                "Add to Cart",
                                style: GoogleFonts.oswald().copyWith(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
