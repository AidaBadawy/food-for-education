import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:food_for_education/ui/common/box_text.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';
import 'package:food_for_education/ui/common/ui_helpers.dart';

import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PoppinsText.semiBold(
              'Food For Education',
              26,
              colorScheme.primary,
            ),
            verticalSpaceMedium,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                PoppinsText.regular(
                  'Loading...',
                  16,
                  colorScheme.onSurface,
                ),
                horizontalSpaceSmall,
                SizedBox(
                  width: 2.5.h,
                  height: 2.5.h,
                  child: CircularProgressIndicator(
                    color: colorScheme.onSurface,
                    strokeWidth: 6,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}
