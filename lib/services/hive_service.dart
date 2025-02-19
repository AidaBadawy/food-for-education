import 'package:food_for_education/models/post_model.dart';
import 'package:food_for_education/ui/common/hive_boxes.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stacked/stacked.dart';

class HiveService with ListenableServiceMixin {
  HiveService() {
    // listenToReactiveValues([]);
  }

  Box<PostModel>? _postsBox;

  initializeHive() async {
    await Hive.initFlutter();
    Hive.registerAdapter(PostModelAdapter());
    _postsBox = await Hive.openBox(postBox);
  }

  Future<void> savePosts(List<PostModel> posts) async {
    await _postsBox!.clear();
    await _postsBox!.addAll(posts);
  }

  List<PostModel> getCachedPosts() {
    return _postsBox!.values.toList();
  }

  Future<void> clearCache() async {
    await _postsBox!.clear();
  }
}
