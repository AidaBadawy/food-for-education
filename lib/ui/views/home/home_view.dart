import 'package:flutter/material.dart';
import 'package:food_for_education/models/post_model.dart';
import 'package:food_for_education/ui/common/box_text.dart';
import 'package:food_for_education/ui/common/enums.dart';
import 'package:food_for_education/ui/common/ui_helpers.dart';
import 'package:food_for_education/ui/widgets/post_card.dart';
import 'package:sizer/sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    bool isDark = getThemeManager(context).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: PoppinsText.regular(
          'Posts (${viewModel.postList.length})',
          16,
          colorScheme.onSurface,
        ),
        actions: [
          IconButton(
            onPressed: () => viewModel.toggleDarkLightMode(context),
            icon: Icon(
                isDark ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
                size: 28,
                color: colorScheme.primary),
          ),
        ],
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          await viewModel.onInitHomeView();
        },
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 5.1.w, vertical: 1.5.h),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            if (index == viewModel.postList.length &&
                viewModel.postList.length != viewModel.postListService.length) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    viewModel.fetchMorePosts(); // Call your load more function
                  },
                  child:
                      PoppinsText.medium('Load More', 14, colorScheme.primary),
                ),
              );
            }
            return Skeletonizer(
              enabled: viewModel.status == StatusEnum.busy,
              child: PostCard(
                postModel: viewModel.postList[index],
                onTap: (PostModel post) {
                  viewModel.navigateToPostDetail(post);
                },
              ),
            );
          },
          separatorBuilder: (context, index) => verticalSpaceSmall,
          itemCount:
              viewModel.postList.length != viewModel.postListService.length
                  ? viewModel.postList.length + 1
                  : viewModel.postList.length,
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();

  @override
  void onViewModelReady(HomeViewModel viewModel) {
    viewModel.onInitHomeView();
    super.onViewModelReady(viewModel);
  }
}
