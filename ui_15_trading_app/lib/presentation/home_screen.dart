import 'package:flutter/material.dart';
import 'package:ui_15_trading_app/presentation/widgets/custom_graph_widget.dart';
import 'package:ui_15_trading_app/presentation/widgets/dashboard_widget.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        foregroundColor: Colors.white,
        title: const Text(
          "Market",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage("assets/profile.jpeg"),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      //045ed7
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Color(0xffe2d76b),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dev_73arner",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      "XRP",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff035ed7),
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: const Text("Trade"))
              ],
            ),
            const SizedBox(height: 20),
            /////// ******* DashBoard Widget ****** //////////
            const DashboardWidget(),
            const SizedBox(height: 20),
            /////// ******* Graph Widget ****** //////////
           const  CustomGraphWidget(),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white.withOpacity(0.12)),
                borderRadius: BorderRadius.circular(10),
                color:const  Color(0xff0e121a),
              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const  Text(
                    "Trading Activity",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                 const  SizedBox(height: 20,),
                  LinearProgressIndicator(
                    value: 0.7,
                    color:const  Color(0xff035ed7),
                    minHeight: 6,
                    backgroundColor: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(30),
                  ),

                ],
              ),

            ),
            const  SizedBox(height: 100,),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff035ed7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {  },
        child: Icon(Icons.trending_up,color: Colors.white,size: 30,),),
      bottomNavigationBar:const  BottomAppBar(
          shape:  CircularNotchedRectangle(),
        padding:  EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        color: Colors.black,
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.bar_chart,
              color: Colors.grey,
            ),

            Icon(
              Icons.account_balance_wallet,
              color: Colors.grey,
            ),
            Icon(
              Icons.currency_bitcoin,
              color: Colors.grey,
            ),
            Icon(
              Icons.person,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
