import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class CheweiListItem extends StatefulWidget {
  final bool looping;
  final VideoPlayerController videoPlayerController;
  CheweiListItem({@required this.videoPlayerController, this.looping, Key key})
      : super(key: key);
  @override
  _CheweiListItemState createState() => _CheweiListItemState();
}

class _CheweiListItemState extends State<CheweiListItem> {
  ChewieController _chewieController;
  List<String> desc = [
    'Beautiful Butterfly',
    'Fat rabbit in jungle',
    'beautiful street'
  ];
  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
        videoPlayerController: widget.videoPlayerController,
        aspectRatio: 19 / 23,
        autoInitialize: true,
        looping: widget.looping,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              errorMessage,
              style: TextStyle(color: Colors.white),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Chewie(
              controller: _chewieController,
            ),
          ),
        ),
        Positioned(
            bottom: 76,
            right: 40,
            child: Text(
              '1.2k likes',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                  color: Colors.grey),
            )),
        Positioned(
            bottom: 120,
            left: 70,
            child: Container(
                width: 100,
                child: Text(
                  'Beautiful Butterfly',
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      fontSize: 20),
                ))),
        Positioned(
          bottom: 70,
          left: 70,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy27zpnfDXJGeD43u1op_w_wj26hVfs6Tm4g&usqp=CAU'),
                    fit: BoxFit.fill)),
          ),
        ),
        Positioned(
          bottom: 70,
          left: 95,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://superstarsbio.com/wp-content/uploads/2020/07/Raja-Kumari-agie-559x480.jpg'),
                    fit: BoxFit.fill)),
          ),
        ),
        Positioned(
          bottom: 70,
          left: 120,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://thewashingtonnote.com/wp-content/uploads/2020/03/Bruna-Marquezine-scaled.jpg'),
                    fit: BoxFit.fill)),
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();

    _chewieController.dispose();
  }
}
