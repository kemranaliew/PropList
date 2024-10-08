import 'package:flutter/material.dart';
import 'package:proplist/constants/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: appPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width * 0.4,
            height: 60,
            decoration: BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: darkBlue.withOpacity(0.6),
                      offset: const Offset(0, 10),
                      blurRadius: 10)
                ]),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.mail_rounded,
                  color: white,
                ),
                Text(
                  "Mail Us!",
                  style: TextStyle(
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: size.width * 0.4,
            height: 60,
            decoration: BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: darkBlue.withOpacity(0.6),
                      offset: const Offset(0, 10),
                      blurRadius: 10)
                ]),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.call_rounded,
                  color: white,
                ),
                Text(
                  "Call Us!",
                  style: TextStyle(
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
