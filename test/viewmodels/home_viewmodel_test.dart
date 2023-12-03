import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:initapp/app/app.bottomsheets.dart';
import 'package:initapp/app/app.locator.dart';
import 'package:initapp/ui/common/app_strings.dart';
import 'package:initapp/ui/views/home/home_viewmodel.dart';

import '../helpers/test_helpers.dart';

void main() {

  group('HomeViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}