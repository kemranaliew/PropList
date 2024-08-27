import 'package:flutter/material.dart';
import 'package:proplist/model/house.dart';
import 'package:proplist/screen/details/compontents/carousel_images.dart';
import 'package:proplist/screen/details/compontents/custom_app_bar_details.dart';
import 'package:proplist/screen/details/compontents/house_details.dart';
import 'compontents/bottom_button.dart';

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
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Stack(
                
                children: [
                  CarouselImages(widget.house.moreImagesUrl),
                  CustomAppBarDetails(house: widget.house),
                ],
              ),
              HouseDetails(house: widget.house),
            ],
          ),
          const BottomButton(),
        ],
      ),
    );
  }
}
