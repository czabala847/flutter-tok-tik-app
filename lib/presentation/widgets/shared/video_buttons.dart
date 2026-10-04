import 'package:animate_do/animate_do.dart';
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
        const SizedBox(),
        _CustomIconButton(
          iconData: Icons.remove_red_eye_outlined,
          value: video.views,
        ),
        const SizedBox(),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _CustomIconButton(
            iconData: Icons.play_circle_outlined,
            value: 0,
          ),
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
        if (value > 0) Text(HumanFormats.humanReadbleNumber(value.toDouble())),
      ],
    );
  }
}
