import 'package:flutter/material.dart';

import 'circular_task.dart';

class ThingsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircularTask(
            title: 'index $index',
          ),
        );
      },
    );
  }
}
