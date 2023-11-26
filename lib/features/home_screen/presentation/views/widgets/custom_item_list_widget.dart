import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomItemListViewWidget extends StatelessWidget {
  const CustomItemListViewWidget({Key? key,required this.url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: AspectRatio(
            //           width  / height
            aspectRatio: 2.6 / 4,
            child: CachedNetworkImage(fit: BoxFit.fill,imageUrl: url,)
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
