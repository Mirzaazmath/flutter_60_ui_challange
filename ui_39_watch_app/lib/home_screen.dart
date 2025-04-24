import 'package:flutter/material.dart';
import 'package:ui_39_watch_app/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.sort, color: Color(0xfff0deba)),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            buildProductTitle(title: "FEATURED"),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "W10-00",
                          style: TextStyle(
                            color: Color(0xffad8347),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "WISHDOIT",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),

                        Text(
                          "Fashion Men Quartz watch Luxury Leathers Strop WAterprof",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffad8347),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorLight,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("BUY NOW", style: TextStyle(fontSize: 12)),
                              SizedBox(width: 5),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,

                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 30,
                                offset: Offset(10, 10),
                              ),
                            ],
                          ),
                        ),
                        Image.asset("assets/image1.png", fit: BoxFit.fill),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            buildProductTitle(title: "TRENDING"),
            SizedBox(height: 30),
            Row(
              children: [
                buildSingleWatchProduct(
                  image: "2",
                  title: "FOSSIL",
                  subTitle: "GRANT WATCH",
                ),
                SizedBox(width: 30),
                buildSingleWatchProduct(
                  image: "3",
                  title: "Tommy HILFIGER",
                  subTitle: "DECKER WATCH",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductTitle({required title}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                letterSpacing: 2,
                color: Theme.of(context).primaryColorLight,
              ),
            ),
            Text(
              "PRODUCTS",
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 24,
                color: Theme.of(context).primaryColorLight,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_back_ios_outlined,
              color: Theme.of(context).primaryColorLight,
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Theme.of(context).primaryColorLight,
            ),
          ],
        ),
      ],
    );
  }

  Widget buildSingleWatchProduct({
    required image,
    required title,
    required subTitle,
  }) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (con) => DetailScreen()));
            },
            child: Container(
              alignment: Alignment.topRight,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Theme.of(context).primaryColor,
                image: DecorationImage(
                  image: AssetImage("assets/image$image.png"),
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(8.0),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Color(0xffe8bc73),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 10,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
          SizedBox(height: 2),
          Text(
            subTitle,
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 14,
              color: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
