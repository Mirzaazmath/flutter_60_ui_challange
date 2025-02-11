import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_slider/data_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height,
          width:  MediaQuery.sizeOf(context).width,
          decoration:  BoxDecoration(

              color: pokemonList[currentIndex==0?currentIndex:currentIndex-1].bgColor,
              boxShadow: const[BoxShadow(color: Colors.white60, blurRadius: 100)]),
        ),
        AnimatedBuilder(
          animation: _animationController,
            builder: (context,child) {
          return Container(
            height: MediaQuery.sizeOf(context).height*_animationController.value,
            width: MediaQuery.sizeOf(context).width*_animationController.value,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular( _animationController.value<0.9? _animationController.value*200:0),
              color: pokemonList[currentIndex].bgColor,
            ),
          );
        }, ),
        Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              boxShadow: [BoxShadow(color: Colors.white60, blurRadius: 100)]),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                  _animationController.value=0;
                  _animationController.forward();
                });
              },
              itemCount: pokemonList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pokemonList[currentIndex].type,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      const Text(
                        "Pokemon",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                      Expanded(
                          child: Center(
                              child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(pokemonList[currentIndex].image),
                      ))),
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Text(
                          pokemonList[currentIndex].name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35),
                        ),
                      )),
                    ],
                  ),
                );
              }),
          bottomNavigationBar:const  ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
            
            child:  BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 8,
              color: Colors.black,
            ),
          ),
          floatingActionButton: const CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.add,
              size: 40,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ],
    );
  }
}
