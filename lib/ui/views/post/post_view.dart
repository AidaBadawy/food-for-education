import 'package:flutter/material.dart';
import 'package:food_for_education/models/post_model.dart';
import 'package:food_for_education/ui/common/box_text.dart';
import 'package:food_for_education/ui/common/ui_helpers.dart';
import 'package:food_for_education/ui/widgets/post_card.dart';
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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            viewModel.goBack();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.1.w),
        child: SingleChildScrollView(
          controller: viewModel.scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceSmall,
              PoppinsText.semiBold(
                viewModel.currentPost!.title!,
                16,
                colorScheme.onSurface,
              ),
              verticalSpaceSmall,
              PoppinsText.regular(
                viewModel.currentPost!.body!,
                14,
                colorScheme.onSurface,
              ),
              verticalSpaceMedium,
              Divider(
                color: colorScheme.onSurface,
                thickness: .6,
              ),
              verticalSpaceMedium,
              PoppinsText.semiBold(
                'Other Related Posts',
                16,
                colorScheme.onSurface,
              ),
              verticalSpaceSmall,
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: viewModel.filteredPaginatedList.length,
                separatorBuilder: (context, index) => verticalSpaceSmall,
                itemBuilder: (context, index) {
                  return PostCard(
                    postModel: viewModel.filteredPaginatedList[index],
                    onTap: (PostModel post) {
                      viewModel.updatePost(post);
                    },
                  );
                },
              ),
              verticalSpaceMedium,
            ],
          ),
        ),
      ),
    );
  }

  @override
  PostViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PostViewModel();

  @override
  void onViewModelReady(PostViewModel viewModel) {
    viewModel.initPostView(postModel);
    super.onViewModelReady(viewModel);
  }
}
