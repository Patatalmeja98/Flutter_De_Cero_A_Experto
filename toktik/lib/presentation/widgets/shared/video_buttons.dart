import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/video_post.dart';



class VideoButtons extends StatelessWidget {


  final VideoPost video;


  const VideoButtons({
    super.key, 
    required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton( value: video.likes, iconColor: Color.fromARGB(255, 219, 17, 255), iconData: Icons.favorite, ),
         const SizedBox(height: 20,),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5) ,
          
          child: _CustomIconButton( value: video.views, iconData:  Icons.remove_red_eye_outlined, )),
         const SizedBox(height: 20,),
       SpinPerfect(
        infinite: true,
        duration: const Duration(seconds: 5),
          child: const _CustomIconButton( value:0, iconData:  Icons.play_circle_outline, )),
        
        ],
    );
  }
}




class _CustomIconButton extends StatelessWidget {
   final int value;
   final IconData iconData;
   final Color? color;
  const _CustomIconButton({
    
    required this.value,
    required this.iconData,
     iconColor
  }): color = iconColor ?? const Color.fromARGB(255, 230, 5, 5);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: (){}, 
          icon: Icon(iconData, color:color, size: 30,)),
          if (value > 0)
        Text(HumanFormats.humanReadbleNumer(value.toDouble())),
      ],
    );
  }
}

