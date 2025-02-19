import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:food_for_education/models/post_model.dart';
import 'package:food_for_education/ui/common/box_text.dart';
import 'package:food_for_education/ui/common/enums.dart';
import 'package:food_for_education/ui/common/ui_helpers.dart';
import 'package:food_for_education/ui/widgets/common/body_wrapper/body_wrapper.dart';
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

    if (viewModel.connectivity != ConnectivityResult.none &&
        viewModel.postListService.isEmpty &&
        !viewModel.hasFetched) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        viewModel.onInitHomeView();
      });
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: PoppinsText.regular(
          'Posts (${viewModel.paginatedList.length})',
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
      body: BodyWrapper(
        position: 6.4.h,
        body: RefreshIndicator.adaptive(
          onRefresh: () async {
            await viewModel.onInitHomeView();
          },
          child: viewModel.paginatedList.isEmpty
              ? Center(
                  child: PoppinsText.medium(
                      'No Posts Available', 14, colorScheme.primary),
                )
              : ListView.separated(
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.1.w, vertical: 1.5.h),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    if (index == viewModel.paginatedList.length &&
                        viewModel.paginatedList.length !=
                            viewModel.postListService.length) {
                      return Center(
                        child: ElevatedButton(
                          onPressed: () {
                            viewModel.fetchMorePosts();
                          },
                          child: PoppinsText.medium(
                              'Load More', 14, colorScheme.primary),
                        ),
                      );
                    }
                    return Skeletonizer(
                      enabled: viewModel.status == StatusEnum.busy,
                      child: PostCard(
                        postModel: viewModel.paginatedList[index],
                        onTap: (PostModel post) {
                          viewModel.navigateToPostDetail(post);
                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => verticalSpaceSmall,
                  itemCount: viewModel.paginatedList.length !=
                          viewModel.postListService.length
                      ? viewModel.paginatedList.length + 1
                      : viewModel.paginatedList.length,
                ),
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
