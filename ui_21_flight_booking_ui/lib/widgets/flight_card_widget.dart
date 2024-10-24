import 'package:flutter/material.dart';

import '../data/flight_data.dart';
class FlightCardWidget extends StatelessWidget {
  final bool isEven;
  final FlightData data;
  const FlightCardWidget({super.key,required this.isEven,required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(bottom: 15),
    child: Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          height: 200,
          padding:const EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color:isEven? Theme.of(context).primaryColor:Theme.of(context).primaryColorLight
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.flightName,style: TextStyle(fontSize: 18,color:isEven?  Colors.lightGreen:Theme.of(context).primaryColorDark,fontWeight: FontWeight.w500),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data.arrivalTime,style: TextStyle(fontWeight: FontWeight.w900,color:isEven? Colors.white:Colors.black,fontSize: 20),),
                      Text(data.arrivalDate,style: const TextStyle(fontWeight: FontWeight.normal,color: Colors.grey,fontSize: 16),),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data.departureTime,style: TextStyle(fontWeight: FontWeight.w900,color:isEven? Colors.white:Colors.black,fontSize: 20),),
                      Text(data.arrivalDate,style:const  TextStyle(fontWeight: FontWeight.normal,color: Colors.grey,fontSize: 16),),
                    ],
                  ),

                ],
              ),
              SizedBox(
                height: 5,
                width: double.infinity,
                child: Row(
                  children:List.generate(
                      150 ~/ 1,
                          (index) => Expanded(
                        child: Container(
                          color:
                          index % 2 == 0 ? Colors.transparent :isEven?  Theme.of(context).primaryColorLight:Colors.grey,
                          height: 1,
                        ),
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const  Text("Ticket Price",style: TextStyle(color: Colors.grey,fontSize: 15),),
                  Text("\$${data.price}",style: TextStyle(color: isEven? Colors.lightGreen:Theme.of(context).primaryColorDark,fontSize: 15),),
                ],
              )

            ],
          ),

        ),

        Container(
          height: 45,
          width: 130,
          decoration:  BoxDecoration(
              color:isEven?  Theme.of(context).primaryColorLight.withOpacity(0.1):Theme.of(context).primaryColorDark,
              borderRadius: const BorderRadius.only(topRight: Radius.circular(30),bottomLeft:Radius.circular(30) )
          ),
          alignment: Alignment.center,
          child: const Text("Fastest",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
        ),
        Positioned(
          right: 20,
            bottom: 10,
            child: Transform.rotate(
                angle: -1,
                child: Icon(Icons.airplanemode_on_sharp,size: 100,color: Colors.black.withOpacity( isEven?0.3:0.05),)))
      ],
    ));
  }
}
