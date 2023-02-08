import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;
  const BoxCard({Key? key, required this.boxContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 233,
        width: 370,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          boxShadow: kElevationToShadow[3],
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).cardColor,
        ),
        child: boxContent,
      ),
    );
  }
}
