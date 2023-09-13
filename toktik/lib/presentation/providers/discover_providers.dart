import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repositori.dart';

class DiscoverProvidder extends ChangeNotifier {
  final VideoPostRepository videoPostRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvidder({required this.videoPostRepository});

  Future<void> loadNextPage() async {
    //await Future.delayed(const Duration(seconds: 2));

    //final List<VideoPost> newVideos = videoPosts
    //  .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
    //.toList();

    final newVideos = await videoPostRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
