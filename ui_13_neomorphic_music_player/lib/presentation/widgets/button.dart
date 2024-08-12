import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  Widget child;
  double? height;
  double? width;
   CustomButton({super.key,required this.child,this.width,this.height});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height??50,
      width: width??50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade800),
        shape: BoxShape.circle,
        gradient:const  LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[
              Color(0xff2b2f34),
              Color(0xff1d1f23),
            ]
        ),
        boxShadow:const  [
          BoxShadow(
              color: Colors.white12,
              blurRadius: 10,
              offset: Offset(-5,-5)
          ),
          BoxShadow(
              color: Colors.black54,
              blurRadius: 10,
              offset: Offset(6,6)
          )
        ],
      ),
      alignment: Alignment.center,
      child: child,
    );
  }
}
