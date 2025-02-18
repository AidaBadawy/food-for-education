import 'package:flutter/material.dart';
import 'package:food_for_education/models/post_model.dart';
import 'package:food_for_education/ui/common/box_text.dart';
import 'package:food_for_education/ui/common/ui_helpers.dart';
import 'package:sizer/sizer.dart';

class PostCard extends StatelessWidget {
  final Function onTap;
  final PostModel postModel;
  const PostCard({super.key, required this.onTap, required this.postModel});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      onTap: () => onTap(postModel),
      child: Container(
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(smallSizerWidth),
        ),
        padding: EdgeInsets.symmetric(horizontal: 3.1.w, vertical: 1.5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PoppinsText.semiBold(
              postModel.title!,
              14,
              colorScheme.onSurface,
            ),
            verticalSpaceSmall,
            RichText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: postModel.body!,
                style: poppinsFonts.copyWith(
                  color: colorScheme.primary,
                  fontSize: setFontSize(13),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
