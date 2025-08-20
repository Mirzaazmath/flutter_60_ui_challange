import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_43_music_player/data.dart';
import 'package:ui_43_music_player/player_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _controller = PageController();
  final _notifyScroll = ValueNotifier(0.0);
  void _listener() {
    _notifyScroll.value = _controller.page!;
  }

  @override
  void initState() {
    _controller.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Music Player")),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: _notifyScroll,
          builder: (context, value, _) {
            return PageView.builder(
              controller: _controller,
              itemCount: songList.length,
              itemBuilder: (context, index) {
                final size = MediaQuery.of(context).size;
                final song = songList[index];
                final percentage = index - value;
                final rotation = percentage.clamp(0.0, 1.0);
                final fixRotation = pow(rotation, 0.6);

                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Transform(
                        alignment: Alignment.centerLeft,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.002)
                          ..rotateY(1.6 * fixRotation)
                          ..translate(-rotation * size.width * 0.8)
                          ..scale(1 + rotation),
                        child: Hero(
                          tag: song.image,
                          child: CircleAvatar(
                            radius: 150,
                            backgroundImage: AssetImage(song.image),
                          ),
                        ),
                      ),

                      SizedBox(height: 50),
                      Text(
                        song.title,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        song.artist,
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(color: Colors.grey),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: GestureDetector(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayerScreen(index: _controller.page!.round())));
      },
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.black,
          child: Icon(Icons.play_arrow, color: Colors.white, size: 50),
        ),
      ),
    );
  }
}
