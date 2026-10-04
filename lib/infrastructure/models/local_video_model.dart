import 'package:tok_tik_app/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    required this.likes,
    required this.views,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) {
    return LocalVideoModel(
      name: json['name'],
      videoUrl: json['videoUrl'],
      likes: json['likes'],
      views: json['views'],
    );
  }

  VideoPost toVideoPostEntity() {
    return VideoPost(
      videoUrl: videoUrl,
      caption: name,
      likes: likes,
      views: views,
    );
  }
}
