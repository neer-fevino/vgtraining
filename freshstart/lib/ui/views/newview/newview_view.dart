import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'newview_viewmodel.dart';

class NewviewView extends StackedView<NewviewViewModel> {
  const NewviewView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NewviewViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  NewviewViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NewviewViewModel();
}
