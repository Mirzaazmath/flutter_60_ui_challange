import 'package:flutter/material.dart';

import 'data.dart';

class DetailsPage extends StatelessWidget {
  final PlanetInfo planet;
  const DetailsPage(this.planet, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 300,
                      ),
                      Text(
                        planet.name,
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff47455f),
                        ),
                      ),
                      const Text(
                        "Solar System",
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff47455f),
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        planet.description ?? "",
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff47455f),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Gallery",
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff47455f),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: planet.images.length,
                            itemBuilder: (context, index) {
                              return Card(
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24)),
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Image.network(
                                    planet.images[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(right: -60, child: Hero(
                tag:planet.iconImage,
                  child: Image.asset(planet.iconImage))),
              Positioned(
                top: 60,
                left: 32,
                child: Text(
                  planet.position.toString(),
                  style: TextStyle(
                    fontSize: 240,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff47455f).withOpacity(0.07),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios))
            ],
          )),
    );
  }
}
