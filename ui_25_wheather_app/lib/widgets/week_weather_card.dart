import 'package:flutter/material.dart';

class WeekWeatherCard extends StatelessWidget {
  const WeekWeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    var hgt = MediaQuery.sizeOf(context).height;
    return Stack(
      children: [
        Container(
          height: hgt * 0.52,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
              color: Color(0xff0d4292)),
        ),
        Container(
          height: hgt * 0.5,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Theme.of(context).primaryColorDark,
                    Theme.of(context).primaryColorLight,
                  ]),
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).primaryColorDark.withOpacity(0.8),
                    offset: const Offset(0, 6),
                    blurRadius: 20)
              ],
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(50)),
              border: Border.all(
                  color: Theme.of(context).primaryColor.withOpacity(0.3))),
          padding: const EdgeInsets.all(15),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Theme.of(context).primaryColor,
                          size: 30,
                        )),
                    Column(
                      children: [
                        Text(
                          "7 Days",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Theme.of(context).primaryColor,
                      size: 30,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: hgt * 0.15,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(40, 20),
                                  blurRadius: 100)
                            ]),
                          ),
                          Image.asset("assets/rain.png"),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tomorrow",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: hgt * 0.025,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "21",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: hgt * 0.1,
                              ),
                            ),
                            Text(
                              "/17*",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor.withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                                fontSize: hgt * 0.06,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Rainy-Cloudy",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: hgt * 0.02,
                          ),
                        ),

                      ],
                    )
                  ],
                ),

                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.air,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          "13 Km/h",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Wind",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.water_drop,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          "24%",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Humidity",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.water,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          "87%",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Rain",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
