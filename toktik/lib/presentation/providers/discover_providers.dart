


import 'package:flutter/material.dart';
import 'package:toktik/domain/video_post.dart';

class   DiscoverProvidder extends ChangeNotifier{
  
 
    bool initialLoading = true;
    List<VideoPost> videos = [];

    Future<void> loadNextPage()  async{

      //todo: cargar videos

      notifyListeners();
      }




}