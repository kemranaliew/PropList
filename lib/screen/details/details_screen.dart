import 'package:flutter/material.dart';
import 'package:proplist/model/house.dart';
import 'package:proplist/screen/details/compontents/carousel_images.dart';
import 'package:proplist/screen/details/compontents/custom_app_bar_details.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.house});

  final House house;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CarouselImages(widget.house.moreImagesUrl),
              const CustomAppBarDetails(),
            ],
          ),
        ],
      ),
    );
  }
}
