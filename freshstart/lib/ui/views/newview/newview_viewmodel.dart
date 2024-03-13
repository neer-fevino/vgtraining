import 'dart:ffi';

import 'package:freshstart/app/app.locator.dart';
import 'package:freshstart/services/common_service_service.dart';
import 'package:stacked/stacked.dart';

class NewviewViewModel extends ReactiveViewModel {


  int get _getBodyIndex => _commonService.bodyIndex;
  final _commonService = locator<CommonServiceService>();

  get getBodyIndex => _getBodyIndex;
  @override
  List<ListenableServiceMixin> get listenableServices => [_commonService];

  void changeBottomNavigationIndex(int index) {
    // _getBodyIndex = _commonService.bodyIndex;
    _commonService.setBodyIndex(index);
   
  }

}
