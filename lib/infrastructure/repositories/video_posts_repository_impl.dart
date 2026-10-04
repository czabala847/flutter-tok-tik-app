import 'package:tok_tik_app/domain/datasource/video_posts_datasource.dart';
import 'package:tok_tik_app/domain/entities/video_post.dart';
import 'package:tok_tik_app/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImp extends VideoPostRepository {
  final VideoPostsDatasource videosDataSource;

  VideoPostsRepositoryImp({required this.videosDataSource});

  @override
  Future<List<VideoPost>> getFavorieVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDataSource.getTrendingVideosByPage(page);
  }
}
