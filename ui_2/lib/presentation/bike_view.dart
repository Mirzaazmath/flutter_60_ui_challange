import 'package:flutter/material.dart';

class Bike3DEffect extends StatefulWidget {
  @override
  _Bike3DEffectState createState() => _Bike3DEffectState();
}

class _Bike3DEffectState extends State<Bike3DEffect> {
  double _sliderValue = 0;

  // List of bike images
  final List<String> _bikeImages = [
    'assets/image1.png',
    'assets/image2.png',
    'assets/image3.png',
    'assets/image4.png',
    'assets/image5.png',
    'assets/image6.png',
    'assets/image7.png',
    'assets/image8.png',
    'assets/image9.png',
    'assets/image10.png',
    'assets/image11.png',
  ];
  void _handlePanUpdate(DragUpdateDetails details, Size size) {
    setState(() {
      _sliderValue -= -details.delta.dx / size.width;
      if (_sliderValue < 0) _sliderValue = 0;
      if (_sliderValue > 1) _sliderValue = 1;
    });
  }
  // To Preload Image in our App
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    for (var imagePath in _bikeImages) {
      final image = Image.asset(imagePath);
      precacheImage(image.image, context);
    }
  }
  @override
  Widget build(BuildContext context) {
    int imageIndex = (_sliderValue * (_bikeImages.length - 1)).round();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title:const  Text('Bike View'),
      ),
      body:  LayoutBuilder(
        builder: (context, constraints) {
          return GestureDetector(
            onPanUpdate: (details) => _handlePanUpdate(details, constraints.biggest),
            child: Column(
              children: [
                Expanded(
                  child: Hero(
                    tag: "Hello",
                    child: Center(
                        child: Image.asset(_bikeImages[imageIndex],fit: BoxFit.cover,)
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}