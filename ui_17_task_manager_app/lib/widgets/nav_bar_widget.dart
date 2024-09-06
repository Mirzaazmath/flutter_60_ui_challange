import 'package:flutter/material.dart';
class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 100,
          child: Column(
            children: [
              const  Spacer(),
              Container(
                height: 80,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight,
                borderRadius:const  BorderRadius.vertical(top: Radius.circular(30))
              ),
                padding: const EdgeInsets.all(20),
                child:const  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.home_outlined,color: Colors.grey,size:30 ,),
                    Icon(Icons.note_alt_outlined,color: Colors.grey,size:25 ,),
                    SizedBox(),
                    Icon(Icons.bookmark_outline,color: Colors.grey,size:30 ,),
                    Icon(Icons.person_2_outlined,color: Colors.grey,size:30 ,)
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          child: Transform.rotate(
            angle: 0.9,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(Icons.add_circle_outline,size: 30,),

            ),
          ),
        )
      ],
    );
  }
}
