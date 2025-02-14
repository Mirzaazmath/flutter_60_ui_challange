import 'package:flutter/material.dart';
import 'package:ui_34_parcel_delivery_app/data/order_model.dart';

class DetailsScreen extends StatelessWidget {
  final OrderModel data;
  const DetailsScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    var TContext = Theme.of(context);
    List<TimeLineTile>dataList =[
      const TimeLineTile(
        color: Colors.yellow,
        icon: Icons.playlist_add_check_outlined,
        title: "Created",
        subTitle: "SAUERFORT, 6826 REBECA SURPS",
        date: "01 Mar 2025",
        isDone: true,
      ),
       TimeLineTile(
        color: Colors.orange,
        icon: Icons.delivery_dining_outlined,
        title: "On the way",
        subTitle: "SAUERFORT",
        date: "",
        statusList: orderStatusList,
        isDone: true,
      ),
      TimeLineTile(
        color: TContext.primaryColor,
        icon: Icons.check_circle_outline_outlined,
        title: "Delivered",
        subTitle: "BERLIN, 123236 OTTE ST",
        date: "10 Mar 2025",
        isLast: true,
        isDone: false,
      )
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: TContext.scaffoldBackgroundColor,
        foregroundColor: Colors.white,
        title: Center(
          child: Text(
            data.orderId,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.share,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Package",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child:ListView.builder(
                  shrinkWrap: true,
                    itemCount: dataList.length,
                    itemBuilder: (context,index){
                  return dataList[index];
                })),
            Container(
              decoration: BoxDecoration(
                color: TContext.primaryColorLight,
                borderRadius: BorderRadius.circular(30),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.account_balance_wallet_outlined,
                  color: TContext.primaryColor,
                ),
                title: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment status",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.expand_more_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
                subtitle: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shipment cost",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "\$56.30",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Insurance",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "\$5",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "\$61.30",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TimeLineTile extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String subTitle;
  final String date;
  final bool? isLast;
  final bool isDone;
  final List<OrderStatus>? statusList;
  const TimeLineTile(
      {super.key,
      required this.color,
      required this.icon,
      required this.title,
      required this.subTitle,
      required this.date,
      this.isLast,
      required this.isDone,
        this.statusList
      });

  @override
  Widget build(BuildContext context) {
    bool showNotStatusList=statusList==null||statusList!.isEmpty;
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Positioned.fill(
            child:isLast==true?const SizedBox(): Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12,top: 4),
                  child: VerticalDivider(
                    color: color,
                    thickness: 2,
                  ),
                ))),
        IgnorePointer(
          ignoring: showNotStatusList,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Theme(
              data: ThemeData(
                dividerColor: Colors.transparent,
                splashColor: Colors.transparent

              ),
              child: ListTileTheme(
                minVerticalPadding: 0,
                child: ExpansionTile(
                  minTileHeight: 0,
                  trailing: const SizedBox(),
                  dense: true,
                  tilePadding: EdgeInsets.zero,
                  title: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor:isDone? color:Colors.grey.shade800,
                        child: Icon(
                          icon, color: isDone ? Colors.black : Colors.white),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                title,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              showNotStatusList?   Text(
                                date,
                                style: const TextStyle(color: Colors.white),
                              ):const Icon(Icons.arrow_drop_down_sharp,color: Colors.white,)
                            ],
                          ),
                          Text(
                            subTitle,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))
                    ],
                  ),
                  children:  showNotStatusList? []: [

                    for(int i=0;i<statusList!.length;i++)...[
                      Padding(
                        padding: const EdgeInsets.only(top: 15,left: 14),
                        child: Row(

                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 6,
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor: color,
                              ),
                            ),
                            const SizedBox(width: 30,),
                            Expanded(child: Text(statusList![i].status,style: TextStyle(color: Colors.white),)),
                            Text(statusList![i].date,style: TextStyle(color: Colors.white),),

                          ],
                        ),
                      ),
                    ]

                  ],
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
