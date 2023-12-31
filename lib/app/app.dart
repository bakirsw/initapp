import 'package:initapp/services/api_service.dart';
import 'package:initapp/services/http_service.dart';
import 'package:initapp/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:initapp/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:initapp/ui/views/home/home_view.dart';
import 'package:initapp/ui/views/startup/startup_view.dart';
import 'package:initapp/ui/views/search/search_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:initapp/ui/views/feed/feed_view.dart';
import 'package:initapp/ui/views/barber_profile/barber_profile_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SearchView),
    MaterialRoute(page: FeedView),
    MaterialRoute(page: BarberProfileView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: ApiService),
    LazySingleton(classType: HttpService),
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
