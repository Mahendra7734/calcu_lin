import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

main() {
  runApp(How_App_Works());
}

class How_App_Works extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    controller = VideoPlayerController.network(
        'https://www.fluttercampus.com/video.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 110, 97),
        toolbarHeight: 93,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("How app works",style: TextStyle(fontSize: 22)),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          //systemNavigationBarColor: Colors.blue, // Navigation bar
          statusBarColor: Color.fromARGB(255, 68, 110, 97),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20,top: 20,right: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text("Watch video to know more.",style: TextStyle(fontSize: 19),),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Stack(
            children: [

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50)
                ),
                child: AspectRatio(

                  aspectRatio: controller.value.aspectRatio,

                  child: VideoPlayer(controller),
                ),
              ),
              Container(
             alignment: Alignment.center,
                margin: EdgeInsets.only(top: 50),
                child: IconButton(

                    onPressed: () {
                      if (controller.value.isPlaying) {
                        controller.pause();
                      } else {
                        controller.play();
                      }

                      setState(() {});
                    },
                    icon: Icon(controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,color: Colors.white,),iconSize: 100,),
              ),
            ],
          ),
        ),

        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            child: VideoProgressIndicator(controller,
                allowScrubbing: true,
                colors: VideoProgressColors(
                  backgroundColor: Color.fromARGB(255, 68, 110, 97),
                  playedColor: Colors.green,
                  bufferedColor: Colors.white,
                ))),

      ])),
    );
  }
}
