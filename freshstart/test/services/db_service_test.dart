import 'package:flutter_test/flutter_test.dart';
import 'package:freshstart/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('DbServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
