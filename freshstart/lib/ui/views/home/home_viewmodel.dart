import 'package:drift/drift.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:freshstart/app/app.bottomsheets.dart';
import 'package:freshstart/app/app.dialogs.dart';
import 'package:freshstart/app/app.locator.dart';
import 'package:freshstart/app/app.logger.dart';
import 'package:freshstart/app/app.router.dart';
import 'package:freshstart/services/db_service.dart';
import 'package:freshstart/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _db = locator<DbService>();
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();
  final _logger = getLogger("HomeViewModel");

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  onSubmitSaveToDb(TextEditingController yeHaiParametr) async {
    _logger.i(yeHaiParametr.text);
    try {
      TeamFevinosCompanion entry = TeamFevinosCompanion(
        name: Value(yeHaiParametr.text),
      );

      var rs = await _db.db.insertFevinoMember(entry);
      _logger.i(rs);
    } catch (e) {
      _logger.i(e);
    }
  }

  void openNewView() {
    _navigationService.navigateToNewviewView();
  }
}
