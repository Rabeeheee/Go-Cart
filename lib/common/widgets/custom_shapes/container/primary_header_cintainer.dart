import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:go_cart/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:go_cart/util/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
            color: TColors.primaryColor,
            padding: EdgeInsets.all(0),
              child: SizedBox(
    height: 400,
    child: Stack(
      children: [
        Positioned(top: -150, right: -250,child:  TCircularContainer(backgroundColor: TColors.textwhite.withOpacity(0.1),)),
        Positioned(top: 100,right: -300, child:  TCircularContainer(backgroundColor: TColors.textwhite.withOpacity(0.1),)),
        Column(
          children: [
            AppBar()
          ],
        )
      ],
    ),
              ),
          ),
    );
  }
}

