import 'package:flutter/material.dart';

import 'bagsmodel.dart';

class ProductDetail extends StatefulWidget {
  BagItems item;
  ProductDetail(this.item);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail>
    with SingleTickerProviderStateMixin {
  bool isfav = false;
  late AnimationController _animationController;
  //this is used for animation
  late Animation<Color?> _coloranimation;
  late Animation<double> _sizeAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    _coloranimation = ColorTween(begin: Colors.grey[400], end: Colors.red)
        .animate(_animationController);
    _sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
        tween: Tween(begin: 30, end: 50),
        weight: 50,
      ),
      TweenSequenceItem<double>(
        tween: Tween(begin: 50, end: 30),
        weight: 50,
      ),
    ]).animate(_animationController);
//this is used to listen any change in animation
    _animationController.addListener(() {});
    //this is used in listening the controller status it is done or not
    _animationController.addStatusListener((status) {
      //here we changing the bool value depending on  status
      if (status == AnimationStatus.completed) {
        setState(() {
          isfav = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          isfav = false;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        backgroundColor: Colors.grey[200],
        title: const Text(
          "Product Detail",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          AnimatedBuilder(
            animation: _animationController,
            builder: (BuildContext context, _) {
              return IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: _coloranimation.value,
                  size: _sizeAnimation.value,
                ),
                onPressed: () {
                  isfav
                      ? _animationController.reverse()
                      : _animationController.forward();
                },
              );
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
             
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 350,
                      color: Colors.grey[200],
                      child: Hero(
                        tag: widget.item.image,
                          child: Image.asset(widget.item.image)),
                    ),
                    Container(
                      height: 50,
                      color: Colors.grey[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      color: Colors.white54,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.item.name,
                                  style: const TextStyle(
                                      fontSize: 19,
                                      color: Color(0xff180226),
                                      fontWeight: FontWeight.bold)),
                              Text("${widget.item.price}*",
                                  style: const TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(2),
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey)),
                                  child: InkWell(
                                      child: Row(
                                    children: [
                                      const Icon(Icons.star, color: Colors.black),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        widget.item.rating,
                                        style:
                                            const TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ))),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "125+ Review",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            widget.item.description,
                            style:
                                TextStyle(fontSize: 18, color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            height: 70,
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff06c1cf),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "BUY NOW ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
