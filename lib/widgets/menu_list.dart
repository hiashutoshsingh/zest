import 'package:flutter/material.dart';
import 'package:zest/data/model/activity_list_response.dart';
import 'package:zest/utils/constants.dart';

class MenuList extends StatelessWidget {
  final List<ActivityImageItem> images;
  MenuList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: images.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              apiUrl + images[index].url,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
