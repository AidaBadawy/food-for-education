import 'package:animate_do/animate_do.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:food_for_education/ui/common/box_text.dart';
import 'package:food_for_education/ui/common/ui_helpers.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import 'body_wrapper_model.dart';

class BodyWrapper extends StackedView<BodyWrapperModel> {
  final Widget body;
  final double position;
  const BodyWrapper({
    super.key,
    required this.body,
    required this.position,
  });

  @override
  Widget builder(
    BuildContext context,
    BodyWrapperModel viewModel,
    Widget? child,
  ) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        body,
        if (viewModel.connectivity == ConnectivityResult.none &&
            viewModel.showButton)
          Positioned(
            bottom: position,
            child: FadeInUp(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 5.1.w, vertical: 2.8.w),
                width: screenWidth(context) - 5.1.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: colorScheme.errorContainer,
                ),
                child: Row(
                  children: [
                    Icon(Icons.wifi_off, color: colorScheme.error),
                    horizontalSpaceSmall,
                    horizontalSpaceTiny,
                    Expanded(
                      child: PoppinsText.medium(
                        "No internet connection",
                        14,
                        colorScheme.error,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        viewModel.showButtonFunc(false);
                      },
                      child: Icon(Icons.close, color: colorScheme.error),
                    ),
                  ],
                ),
              ),
            ),
          )
      ],
    );
  }

  @override
  BodyWrapperModel viewModelBuilder(
    BuildContext context,
  ) =>
      BodyWrapperModel();
}
