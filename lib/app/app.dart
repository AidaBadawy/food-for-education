import 'package:food_for_education/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:food_for_education/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:food_for_education/ui/views/home/home_view.dart';
import 'package:food_for_education/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:food_for_education/services/main_service.dart';
import 'package:food_for_education/services/dio_service.dart';
import 'package:food_for_education/ui/views/post/post_view.dart';
import 'package:food_for_education/services/hive_service.dart';
import 'package:food_for_education/services/connectivity_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: PostView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: MainService),
    LazySingleton(classType: DioService),
    LazySingleton(classType: HiveService),
    LazySingleton(classType: ConnectivityService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
