import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zest/data/model/activity_list_response.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/utils/constants.dart';

class CarouselImageWidget extends StatefulWidget {
  final List<ActivityImageItem> images;
  final double bottomHeight;

  CarouselImageWidget(
    this.images,
    this.bottomHeight,
  );

  @override
  State<CarouselImageWidget> createState() => _CarouselImageWidgetState();
}

class _CarouselImageWidgetState extends State<CarouselImageWidget> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            viewportFraction: 1,
            aspectRatio: 16 / 13,
            onPageChanged: (newIndex, i) {
              setState(() {
                _current = newIndex;
              });
            },
          ),
          items: widget.images
              .map(
                (item) => Image.network(
                  apiUrl + item.url,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              )
              .toList(),
        ),
        Positioned(
          bottom: widget.bottomHeight,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.images.map(
              (image) {
                int index = widget.images.indexOf(image);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? AppColor.white : AppColor.grey,
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
