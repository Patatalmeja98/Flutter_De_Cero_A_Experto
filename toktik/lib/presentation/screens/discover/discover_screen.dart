
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_providers.dart';
import 'package:toktik/presentation/widgets/shared/video_scrollable_viewe.dart';

class DiscoverScrean extends StatelessWidget {
  const DiscoverScrean({super.key});

  @override
  Widget build(BuildContext context) {

    final discoverProvider = context.watch<DiscoverProvidder>();


    return   Scaffold(
      body:  discoverProvider.initialLoading
      ? const Center(child: CircularProgressIndicator(strokeWidth:  2))
      : VideoScrollableView(videos: discoverProvider.videos)
      
    );


   
  }
}