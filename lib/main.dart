import 'package:flutter/material.dart';
import 'package:food_for_education/app/app.bottomsheets.dart';
import 'package:food_for_education/app/app.dialogs.dart';
import 'package:food_for_education/app/app.locator.dart';
import 'package:food_for_education/app/app.router.dart';
import 'package:food_for_education/utils/env.dart';
import 'package:food_for_education/services/hive_service.dart';
import 'package:food_for_education/ui/common/theme.dart';
import 'package:logger/logger.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  BuildEnvironment.init(
    flavor: BuildFlavor.development,
    appName: 'Food For Education',
    baseUrl: 'https://jsonplaceholder.typicode.com/',
  );

  final logger = Logger();

  FlutterError.onError = (FlutterErrorDetails details) {
    logger.e("FlutterError caught", details.exception, details.stack);

    FlutterError.dumpErrorToConsole(details);
  };
  await ThemeManager.initialise();

  await locator<HiveService>().initializeHive();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultThemeMode: ThemeMode.system,
      darkTheme: ThemeData(
        colorScheme: MaterialTheme.darkScheme().toColorScheme(),
      ),
      lightTheme: ThemeData(
        colorScheme: MaterialTheme.lightScheme().toColorScheme(),
      ),
      builder: (context, regularTheme, darkTheme, themeMode) => Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
          initialRoute: Routes.startupView,
          title: env!.appName,
          onGenerateRoute: StackedRouter().onGenerateRoute,
          navigatorKey: StackedService.navigatorKey,
          theme: regularTheme,
          darkTheme: darkTheme,
          themeMode: themeMode,
          navigatorObservers: [
            StackedService.routeObserver,
          ],
        ),
      ),
    );
  }
}
