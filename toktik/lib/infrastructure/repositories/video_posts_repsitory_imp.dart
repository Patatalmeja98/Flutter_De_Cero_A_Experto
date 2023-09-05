import 'package:toktik/domain/datasource/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repositori.dart';

class VideoPostsRepository implements VideoPostRepository {
  final VideoPostDatasource videoPostDatasource;

  VideoPostsRepository({required this.videoPostDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByPage(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoPostDatasource.getTrendingVideosByPage(page);
  }
}
