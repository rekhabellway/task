import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../../util/dimensions.dart';
import '../../../util/images.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[
          Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
      bottomSheet: Container(
          height: 250,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Color(0xfff1cb0b),
          ),
          child: Column(
            children: [

              Text(
                "Share",
                style: TextStyle(
                    color: Colors.black, fontSize: Dimensions.fontSizeLarge),
              ),
              const SizedBox(
                height: Dimensions.paddingSizeDefault,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                       Images.youtube,
                        height:50,
                        width: 50,
                        fit: BoxFit.cover,
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        Images.facebook,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      )),  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        Images.twiter,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      )),  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        Images.link,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
              const SizedBox(
                height: Dimensions.paddingSizeDefault,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        Images.whats,
                        height:50,
                        width: 50,
                        fit: BoxFit.cover,
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        Images.insta,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      )),  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        Images.tiktok,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      )),  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        Images.coin,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
              const SizedBox(
                height: Dimensions.paddingSizeDefault,
              ),
              IconButton( onPressed: () {  Get.back();}, icon: const Icon(Icons.close, color: Colors.black),)
            ],
          )),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
