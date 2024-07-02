import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "TODAY",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xff2e3639),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //////// ******* Steps Counter ******** //////////
              Container(
                padding: const EdgeInsets.all(20),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff242c2e),
                          Color(0xff434e54),
                        ]),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff3d464d),
                          blurRadius: 30,
                          offset: Offset(-10, -10)),
                      BoxShadow(
                          color: Color(0xff202427),
                          blurRadius: 30,
                          offset: Offset(10, 10))
                    ],
                    borderRadius: BorderRadius.circular(30)),
                alignment: Alignment.center,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      Colors.cyanAccent,
                      Color(0xff147f8d),
                    ]),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff3d464d),
                          blurRadius: 30,
                          offset: Offset(-10, -10)),
                      BoxShadow(
                          color: Color(0xff202427),
                          blurRadius: 30,
                          offset: Offset(10, 10))
                    ],
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.directions_run_outlined,
                        size: 35,
                        color: Colors.white,
                      ),
                      Text(
                        "10,284",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Steps",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //////// ******* Cals Dashboard ******** //////////
            const   SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff242c2e),
                              Color(0xff434e54),
                            ]),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0xff3d464d),
                              blurRadius: 30,
                              offset: Offset(-10, -10)),
                          BoxShadow(
                              color: Color(0xff202427),
                              blurRadius: 30,
                              offset: Offset(10, 10))
                        ],
                        borderRadius: BorderRadius.circular(30)),
                    alignment: Alignment.center,
                    child:const  Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height:45,
                              width: 45,
                              child: CircularProgressIndicator(
                                value: 0.85,
                                strokeCap: StrokeCap.round,
                                strokeWidth: 6,
                                color: Colors.cyan,
                                backgroundColor: Color(0xff465054),
                              ),
                            ),
                            Icon(Icons.local_fire_department_outlined,color: Colors.white,)
                          ],
                        ),
                         SizedBox(height: 10,),
                        Text(
                          "1,845",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Cals",
                          style: TextStyle(
                            color:Color(0xff92999f),
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
        
        
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff242c2e),
                              Color(0xff434e54),
                            ]),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0xff3d464d),
                              blurRadius: 30,
                              offset: Offset(-10, -10)),
                          BoxShadow(
                              color: Color(0xff202427),
                              blurRadius: 30,
                              offset: Offset(10, 10))
                        ],
                        borderRadius: BorderRadius.circular(30)),
                    alignment: Alignment.center,
                    child:const  Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height:45,
                              width: 45,
                              child: CircularProgressIndicator(
                                value: 0.85,
                                strokeCap: StrokeCap.round,
                                strokeWidth: 6,
                                color: Colors.cyan,
                                backgroundColor: Color(0xff465054),
                              ),
                            ),
                            Icon(Icons.location_on_outlined,color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "4.7",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Miles",
                          style: TextStyle(
                            color: Color(0xff92999f),
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
        
        
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff242c2e),
                              Color(0xff434e54),
                            ]),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0xff3d464d),
                              blurRadius: 30,
                              offset: Offset(-10, -10)),
                          BoxShadow(
                              color: Color(0xff202427),
                              blurRadius: 30,
                              offset: Offset(10, 10))
                        ],
                        borderRadius: BorderRadius.circular(30)),
                    alignment: Alignment.center,
                    child:const  Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height:45,
                              width: 45,
                              child: CircularProgressIndicator(
                                value: 0.85,
                                strokeCap: StrokeCap.round,
                                strokeWidth: 6,
                                color: Colors.cyan,
                                backgroundColor: Color(0xff465054),
                              ),
                            ),
                            Icon(Icons.electric_bolt,color: Colors.white,)
                          ],
                        ),
                         SizedBox(height: 10,),
                        Text(
                          "60",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Min",
                          style: TextStyle(
                            color: Color(0xff92999f),
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
        
        
                  ),
                ],
              ),
              //////// ******* List View  ******** //////////
              const SizedBox(height: 20,),
              ListTile(
                leading:Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff242c2e),
                            Color(0xff434e54),
                          ]),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff3d464d),
                            blurRadius: 30,
                            offset: Offset(-10, -10)),
                        BoxShadow(
                            color: Color(0xff202427),
                            blurRadius: 30,
                            offset: Offset(10, 10))
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: const Icon(Icons.favorite_border,color: Colors.red,),
                ) ,
                title:const  Text("90 bpm",style: TextStyle(color: Colors.white),),
                subtitle: const  Text("76 bpm resting heart rate",style: TextStyle(color: Color(0xff92999f)),),
              ),
              ListTile(
                leading:Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff242c2e),
                            Color(0xff434e54),
                          ]),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff3d464d),
                            blurRadius: 30,
                            offset: Offset(-10, -10)),
                        BoxShadow(
                            color: Color(0xff202427),
                            blurRadius: 30,
                            offset: Offset(10, 10))
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child:const  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height:35,
                        width: 35,
                        child: CircularProgressIndicator(
                          value: 0.85,
                          strokeCap: StrokeCap.round,
                          strokeWidth: 6,
                          color: Colors.cyan,
                          backgroundColor: Color(0xff465054),
                        ),
                      ),
                      Icon(Icons.emoji_people_outlined,color: Colors.white,)
                    ],
                  ),
                ) ,
                title:const  Text("3 of 6 hr",style: TextStyle(color: Colors.white),),
                subtitle: const  Text("250+ steps per hour",style: TextStyle(color: Color(0xff92999f)),),
              ),
             const  SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  for(int i=0; i<iconList.length;i++)...[Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff242c2e),
                            Color(0xff434e54),
                          ]),
                      boxShadow:  [
                        BoxShadow(
                            color: Color(0xff3d464d),
                            blurRadius: 30,
                            offset: Offset(-10, -10)),
                        BoxShadow(
                            color: Color(0xff202427),
                            blurRadius: 30,
                            offset: Offset(10, 10))
                      ],
                    ),
                    child: Icon(iconList[i],color: Colors.white,),
                  )]
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
List<IconData>iconList=[
  Icons.select_all,
  Icons.schedule,
  Icons.group,
  Icons.arrow_right_alt
];
