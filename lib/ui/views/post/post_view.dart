import 'package:flutter/material.dart';
import 'package:food_for_education/models/post_model.dart';
import 'package:food_for_education/ui/common/box_text.dart';
import 'package:food_for_education/ui/common/ui_helpers.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked/stacked.dart';

import 'post_viewmodel.dart';

class PostView extends StackedView<PostViewModel> {
  final PostModel postModel;
  const PostView({
    Key? key,
    required this.postModel,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PostViewModel viewModel,
    Widget? child,
  ) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: PoppinsText.regular(
          'Post Detail',
          16,
          colorScheme.onSurface,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.1.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceSmall,
            PoppinsText.semiBold(
              postModel.title!,
              16,
              colorScheme.onSurface,
            ),
            verticalSpaceSmall,
            PoppinsText.regular(
              postModel.body!,
              14,
              colorScheme.onSurface,
            ),
          ],
        ),
      ),
    );
  }

  @override
  PostViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PostViewModel();
}
