
import 'package:flutter/material.dart';
import 'package:ui_43_music_player/data.dart';

class PlayerScreen extends StatefulWidget {
   int index;
   PlayerScreen({super.key, required this.index});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this,duration: Duration(seconds: 5));
    Future.delayed(Duration(milliseconds: 800),(){
      _controller.repeat();
    });

    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 30)],
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: AnimatedBuilder(
                      builder: (context,_) {
                        return Transform.rotate(
                          angle: _controller.value*6,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,

                            ),
                            child: Hero(
                              tag: songList[widget.index].image,
                              child: CircleAvatar(
                                radius: 120,
                                backgroundImage: AssetImage(songList[widget.index].image),
                                child: CircleAvatar(backgroundColor: Colors.white,),
                              ),
                            ),
                          ),
                        );
                      }, animation: _controller,
                    ),
                  ),
                  SizedBox(
                      height: 300,
                      width: 300,
                      child: CircularProgressIndicator(
                        value: 1,
                        color: Colors.white,

                      )),
                  Positioned(
                    bottom: 40,
                    child: Container(height: 30,
                      width: 100,
                      color: Colors.black,
                      alignment: Alignment.center,
                      child: Text("${songList[widget.index].minute}:${songList[widget.index].second}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.shuffle,color: Colors.black,size: 35,),
                InkWell(

                  borderRadius: BorderRadius.circular(30),
                    onTap: (){
                      setState(() {
                        if(widget.index<=0){
                          widget.index=songList.length-1;
                        }else{
                          widget.index--;
                        }

                      });
                    },
                    child: Icon(Icons.fast_rewind_rounded,color: Colors.black,size: 35,)),
                CircleAvatar(radius: 40,backgroundColor: Colors.black,child: Icon(Icons.pause,color: Colors.white,),),
                InkWell(
                    borderRadius: BorderRadius.circular(30),
                  onTap: (){
                    setState(() {
                      if(widget.index>=songList.length-1){
                        widget.index=0;
                      }else{
                        widget.index++;
                      }

                    });
                  },
                    child: Icon(Icons.fast_forward,color: Colors.black,size: 35,)),
                Icon(Icons.loop,color: Colors.black,size: 35,)
              ],
            )

          ],
        ),
      ),
    );
  }
}
