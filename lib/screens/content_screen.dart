import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'like_icon.dart';
import 'options_screen.dart';

class ContentScreen extends StatefulWidget {
  final String? src;

  const ContentScreen({Key? key, this.src}) : super(key: key);

  @override
  _ContentScreenState createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool _liked = false;

  @override
  void initState() {
    super.initState();
    initializePlayer();
    // widget._videoPlayerController.addListener(checkVideo);
  }

  Future initializePlayer() async {
    _videoPlayerController = VideoPlayerController.network(widget.src!);
    await Future.wait([_videoPlayerController.initialize()]);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      showControls: true,
      allowedScreenSleep: false,
      autoInitialize: false,
      looping: true,
      aspectRatio: MediaQuery.of(context).size.width /
          MediaQuery.of(context).size.height,
    );
    Duration durationOfVideo = _videoPlayerController.value.duration;

    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        _chewieController != null &&
                _chewieController!.videoPlayerController.value.isInitialized
            ? GestureDetector(
                onDoubleTap: () {
                  // setState(() {
                  //   _liked = !_liked;
                  //   if (_videoPlayerController.value.isPlaying) {
                  //     _videoPlayerController.pause();
                  //   } else {
                  //     // If the video is paused, play it.
                  //     _videoPlayerController.play();
                  //   }
                  // });
                },
                child: Chewie(
                  controller: _chewieController!,
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 10),
                  Text('Loading...')
                ],
              ),
        if (_liked)
          Center(
            child: LikeIcon(),
          ),
        OptionsScreen()
      ],
    );
  }
}
