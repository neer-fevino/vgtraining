import 'package:freshstart/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:freshstart/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:freshstart/ui/views/home/home_view.dart';
import 'package:freshstart/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:freshstart/ui/views/newview/newview_view.dart';
import 'package:freshstart/services/db_service.dart';
import 'package:freshstart/services/common_service_service.dart';
import 'package:freshstart/ui/views/bwatch/bwatch_view.dart';
// @stacked-import

@StackedApp(routes: [
  MaterialRoute(page: HomeView),
  MaterialRoute(page: StartupView),
  MaterialRoute(page: NewviewView),
  MaterialRoute(page: BwatchView),
// @stacked-route
], dependencies: [
  LazySingleton(classType: BottomSheetService),
  LazySingleton(classType: DialogService),
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DbService),
  LazySingleton(classType: CommonServiceService),
// @stacked-service
], bottomsheets: [
  StackedBottomsheet(classType: NoticeSheet),
  // @stacked-bottom-sheet
], dialogs: [
  StackedDialog(classType: InfoAlertDialog),
  // @stacked-dialog
], logger: StackedLogger())
class App {}
