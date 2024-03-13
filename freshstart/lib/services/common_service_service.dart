import 'package:stacked/stacked.dart';

class CommonServiceService with ListenableServiceMixin {
  int _bodyIndex = 0;

  CommonServiceService() {
    listenToReactiveValues([
      _bodyIndex,
    ]);
  }

  void setBodyIndex(int index) {
    _bodyIndex = index;
    notifyListeners();
  }

  int get bodyIndex => _bodyIndex;

  // ===========================
}
