import 'package:tok_tik_app/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final String likes;
  final String views;

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
      likes: json['likes'].toString(),
      views: json['views'].toString(),
    );
  }

  VideoPost toVideoPostEntity() {
    return VideoPost(
      videoUrl: videoUrl,
      caption: name,
      likes: int.tryParse(likes) ?? 0,
      views: int.tryParse(views) ?? 0,
    );
  }
}
