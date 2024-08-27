import 'package:flutter/material.dart';
import 'package:proplist/constants/constants.dart';
import 'package:proplist/model/house.dart';

class CustomAppBarDetails extends StatefulWidget {
  final House house;
  const CustomAppBarDetails({super.key, required this.house});

  @override
  _CustomAppBarDetailsState createState() => _CustomAppBarDetailsState();
}

class _CustomAppBarDetailsState extends State<CustomAppBarDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding,
        right: appPadding,
        top: appPadding,
      ),
      child: SizedBox(
        height: size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: white.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(Icons.arrow_back_rounded, color: white),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: white.withOpacity(0.4)),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                icon: widget.house.isFav
                    ? const Icon(
                        Icons.favorite_rounded,
                        color: red,
                      )
                    : const Icon(
                        Icons.favorite_border_rounded,
                        color: white,
                      ),
                onPressed: () {
                  setState(() {
                    widget.house.isFav = !widget.house.isFav;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
