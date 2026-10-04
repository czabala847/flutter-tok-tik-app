import 'package:flutter/material.dart';
import 'package:tok_tik_app/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
          color: Colors.red,
          child: const Center(child: Text('Video 1')),
        ),
        Container(
          color: Colors.green,
          child: const Center(child: Text('Video 2')),
        ),
      ],
    );
  }
}
