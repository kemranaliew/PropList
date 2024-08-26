import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:proplist/constants/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselImages extends StatefulWidget {
  final List<String> imagesListUrl;

  const CarouselImages(this.imagesListUrl, {super.key});

  @override
  State<CarouselImages> createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        SizedBox(
          height: size.height * 0.35,
          child: CarouselSlider(
            items: widget.imagesListUrl.map((imageUrl) {
              return Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: size.width,
              );
            }).toList(),
            carouselController: _controller,
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              viewportFraction: 1.0,
              height: 300,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
        ),
        Positioned(
          bottom: 10.0, // Hier kannst du den Abstand anpassen
          left: 0,
          right: 0,
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: _current,
              count: widget.imagesListUrl.length,
              effect: const ScrollingDotsEffect(
                dotHeight: 8.0,
                dotWidth: 8.0,
                activeDotScale: 1.5,
                dotColor: white,
                activeDotColor: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
