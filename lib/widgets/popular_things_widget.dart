import 'package:flutter/material.dart';

import 'circular_task.dart';

class PopularThingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
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
