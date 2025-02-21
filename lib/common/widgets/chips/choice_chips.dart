import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(
        color: selected ? TColors.white : null,
      ),
      avatar: isColor 
          ? TCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: THelperFunctions.getColor(text)!,
            )
          : null,
      shape: isColor ? CircleBorder() : null,
      labelPadding: isColor ? EdgeInsets.all(0) : null,
      padding: isColor? EdgeInsets.all(0) : null,
      backgroundColor: isColor ? THelperFunctions.getColor(text)! : null,
      
    );
  }
}
