import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data_model.dart';

class DetailScreen extends StatelessWidget {
  final Item data;
  const DetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Hero(
                      tag: data.image,
                      child: Image.asset(data.image, fit: BoxFit.fill),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white24,
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: GoogleFonts.cormorant(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.price,
                      style: GoogleFonts.cormorant(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 28,
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: data.color,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.remove, color: Colors.white, size: 20),
                          Text(
                            "1",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Icon(Icons.add, color: Colors.white, size: 20),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "About Product",
                  style: GoogleFonts.cormorant(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Simply Juice offers a pure and refreshing taste, crafted from real fruit juice with no artificial flavors or preservatives. Made with high-quality ingredients",
                  style: GoogleFonts.cormorant(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).primaryColor,
            ),
            alignment: Alignment.center,
            child: Text(
              "Add to Bag",
              style: GoogleFonts.cormorant(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
