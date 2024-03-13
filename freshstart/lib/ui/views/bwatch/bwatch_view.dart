import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'bwatch_viewmodel.dart';

class BwatchView extends StackedView<BwatchViewModel> {
  const BwatchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BwatchViewModel viewModel,
    Widget? child,
  ) {
    return Center(child: Icon(Icons.watch,size: 200,));
  }

  @override
  BwatchViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BwatchViewModel();
}
