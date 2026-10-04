import 'package:flutter/material.dart';
import 'package:tok_tik_app/config/helpers/human_formats.dart';
import 'package:tok_tik_app/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          iconData: Icons.favorite,
          value: video.likes,
          color: Colors.red,
        ),
        _CustomIconButton(
          iconData: Icons.remove_red_eye_outlined,
          value: video.views,
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final IconData iconData;
  final int value;
  final Color? color;

  const _CustomIconButton({
    required this.iconData,
    required this.value,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(iconData, size: 30, color: color),
        ),
        Text(HumanFormats.humanReadbleNumber(value.toDouble())),
      ],
    );
  }
}
