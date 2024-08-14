import 'package:flutter/material.dart';

class SeeAllListScreen extends StatefulWidget {
  const SeeAllListScreen({super.key});

  @override
  State<SeeAllListScreen> createState() => _SeeAllListScreenState();
}

class _SeeAllListScreenState extends State<SeeAllListScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<String> _data = [];
  int _nextItem = 0;
  final int _itemCount = 10; // Total number of items to add

  @override
  void initState() {
    super.initState();
    _loadItems(); // Start loading items automatically
  }

  void _loadItems() async {
    for (int i = 0; i < _itemCount; i++) {
      await Future.delayed(const Duration(milliseconds: 150)); // Simulate a delay
      _addItem();
    }
  }

  void _addItem() {
    final index = _data.length;
    _data.add('Item $_nextItem');
    _nextItem++;
    _listKey.currentState?.insertItem(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //// **** App Bar **** /////
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "Loan EMI ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      //// **** Body **** /////
      body: AnimatedList(
          shrinkWrap: true,
          padding:const EdgeInsets.all(20),
          key: _listKey,
          initialItemCount: _data.length,
          itemBuilder: (context, index,animation) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizeTransition(
                sizeFactor: animation,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 110,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          alignment: Alignment.center,
                          child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(
                                  Icons.credit_score,
                                  size: 30,
                                ),
                              ),
                              title: const Text(
                                "Personal Loan EMI",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                              subtitle: const Text(
                                "\$ 150.10",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 20),
                              ),
                              trailing: const Text(
                                "Due",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15),
                              )),
                        ),
                      ),
                    ),
                    /////// ******* Bottom Chain Part ******* ////////
                    //// *******  Hole  ***** ///////
                    index==9?const SizedBox():    Positioned(
                      bottom: 22,
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.black,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                    //// *******  Rope  ***** ///////
                    index==9?const SizedBox():   Positioned(
                      bottom: -5,
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        padding: const EdgeInsets.symmetric(horizontal: 54),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 35,
                              width: 6,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              height: 35,
                              width: 6,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          ],
                        ),
                      ),
                    ),
                    /////// ******* Top Chain Part ******* ////////
                    ///// **** Hole ***** ///////
                    index==0?const SizedBox():    Positioned(
                      top: 3,
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.black,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                    //// *******  Rope  ***** ///////
                    index==0?const SizedBox():  Positioned(
                      top: -12,
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        padding: const EdgeInsets.symmetric(horizontal: 54),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 25,
                              width: 6,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              height: 25,
                              width: 6,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
