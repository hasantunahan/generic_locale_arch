import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkeletonAnimation(
        shimmerColor: Colors.grey,
        shimmerDuration: 1000,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[300]!,
                  blurRadius: 30,
                  offset: const Offset(0, 10))
            ],
          ),
        ));
  }
}
