import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {

  bool isLoad = false;
  int? selectedIndex;
  void update() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLoad = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: Text(
                "History",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text("Past Week"),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        buildDateScrollBar(),
        const SizedBox(
          height: 20,
        ),
        Expanded(child:isLoad?const Center(child: CircularProgressIndicator(),): ListView.builder(
          itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (context,index){
              return Container(
                margin: const EdgeInsets.only(bottom: 15),
          height: 180,
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color:index.isOdd ?Theme.of(context).primaryColorLight: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey)),
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color:index.isOdd ? Colors.deepOrange: Theme.of(context).primaryColor,
                  ),
                  child:const  Icon(Icons.directions_run_rounded,color: Colors.white,),
                ),
                title: const Text("Running goal Completed"),
                subtitle: const Text("03 hour : 30 min",  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              ),
              const Divider(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Fast",style: TextStyle(color: Colors.grey.shade700),),
                          const Text("1h : 10m",  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Fast",style: TextStyle(color: Colors.grey.shade700),),
                          const Text("1h : 10m",  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Fast",style: TextStyle(color: Colors.grey.shade700),),
                          const Text("1h : 10m",  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        ],
                      )
                    ],
                  ),
                ),
              )

            ],
          ),
        );}))
        
      ],
    );
  }

  buildDateScrollBar() {
    return DatePicker(
      DateTime.now(),
      height: 85,
      width: 60,
      initialSelectedDate: DateTime.now(),
      calendarType: CalendarType.gregorianDate,
      selectedTextColor: Colors.white,
      selectionColor: Colors.deepOrangeAccent,
      dateTextStyle: const TextStyle(
          fontWeight: FontWeight.w600, color: Colors.black, fontSize: 17),
      dayTextStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 11),
      monthTextStyle:const  TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 11),
      onDateChange: (date) {
        setState(() {
          isLoad = true;
          selectedIndex = null;
          update();
        });
      },
    );
  }
}
