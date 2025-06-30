import 'package:flutter/material.dart';

class ValidationItem extends StatefulWidget {
  const ValidationItem(this.title, this.valid, {super.key});

  final String title;
  final bool valid;

  @override
  _ValidationItemState createState() => _ValidationItemState();
}

class _ValidationItemState extends State<ValidationItem>
    with TickerProviderStateMixin {
  late AnimationController _controller;
 late  AnimationController _strikeController;
 late Animation<double> _spaceWidth;
 late  Animation<double> _strikePercent;

  @override
  void didUpdateWidget(ValidationItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.valid != widget.valid) {
      if (widget.valid) {
        _playAnimation(true);
      } else {
        _playAnimation(false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    debugPrint("Init State");
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );

    _strikeController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));

    _spaceWidth = Tween<double>(begin: 8, end: 12)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _strikePercent = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _strikeController, curve: Curves.easeOut));

    _spaceWidth.addListener(() {
      setState(() {});
    });

    _strikePercent.addListener(() {
      setState(() {});
    });
  }

  Future<void> _playAnimation(bool strikeIn) async {
    try {
      if (strikeIn) {
        _strikeController.forward().orCancel;
      } else {
        _strikeController.reverse().orCancel;
      }

      await _controller.forward().orCancel;
      await _controller.reverse().orCancel;
    } on TickerCanceled {
      // the animation got canceled, probably because we were disposed
    }
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 25,
          ),
         VerticalDivider(color: Colors.red,),
          SizedBox(
            width: _spaceWidth.value,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomPaint(
                foregroundPainter: StrikeThroughPainter(_strikePercent.value),
                child: Text(widget.title,
                    style: _getValidateStyle(widget.valid))),
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
    );
  }

  TextStyle _getValidateStyle(bool validation) {
    return TextStyle(
        fontWeight: FontWeight.bold,
        color: (validation) ? Colors.black54 : Colors.black87,
        fontSize: 18,);
  }
}

class StrikeThroughPainter extends CustomPainter {
  StrikeThroughPainter(this.percent);

  double percent;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
        Rect.fromLTWH(0, (size.height / 2) - 2, size.width * percent, 4),
        Paint()..color = Colors.green);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}