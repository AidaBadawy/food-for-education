import 'package:flutter_test/flutter_test.dart';
import 'package:food_for_education/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('BodyWrapperModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
